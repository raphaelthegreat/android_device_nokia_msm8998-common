#!/bin/bash
#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -e

DEVICE_COMMON=msm8998-common
VENDOR=nokia

INITIAL_COPYRIGHT_YEAR=2019

# Load extractutils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

LINEAGE_ROOT="$MY_DIR"/../../..

HELPER="$LINEAGE_ROOT"/vendor/lineage/build/tools/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true

if [ $# -eq 0 ]; then
  SRC1=adb
  SRC2=adb
else
  if [ $# -eq 2 ]; then
    SRC1=$1
    SRC2=$2
  else
    echo "$0: bad number of arguments"
    echo ""
    echo "usage: ./extract-files.sh <a1n_system> <nb1_system>"
    exit 1
  fi
fi

function blob_fixup() {
    case "${1}" in
    vendor/lib64/hw/gxfingerprint.default.so)
        # Hexedit gxfingerprint to load goodix firmware from /vendor/firmware/
        sed -i -e 's|/system/etc/firmware|/vendor/firmware\x0\x0\x0\x0|g' "${2}"
        ;;
    # Patch blobs for VNDK
    vendor/bin/gx_fpd)
        patchelf --replace-needed "libunwind.so" "libunwind-vendor.so" "${2}" 
        patchelf --replace-needed "libbacktrace.so" "libbacktrace-vendor.so" "${2}"
        patchelf --add-needed "liblog.so" "${2}" # Fix __android_log_print might replace it with fakelog in the future
        ;;
    # Fix xml version
    product/etc/permissions/vendor.qti.hardware.data.connection-V1.0-java.xml|product/etc/permissions/vendor.qti.hardware.data.connection-V1.1-java.xml)
        sed -i 's/xml version="2.0"/xml version="1.0"/' "${2}"
        ;;
    esac
}

# Initialize the helper for common device
setup_vendor "$DEVICE_COMMON" "$VENDOR" "$LINEAGE_ROOT"

extract "$MY_DIR"/proprietary-files.txt "$SRC1" "$SECTION"

# Initialize the helper for device
setup_vendor "$DEVICE" "$VENDOR" "$LINEAGE_ROOT" false $CLEAN_VENDOR

extract "$MY_DIR"/../$DEVICE/proprietary-files.txt "$SRC2" "$SECTION"

"$MY_DIR"/setup-makefiles.sh
