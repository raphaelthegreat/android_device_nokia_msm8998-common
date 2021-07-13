#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

LINEAGE_ROOT="${MY_DIR}/../../.."

HELPER="${LINEAGE_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

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
    echo "$0: Bad number of arguments"
    echo ""
    echo "Usage: extract-files.sh /path/to/A1N/dump /path/to/NB1/dump"
    exit 1
  fi
fi

function blob_fixup() {
    case "${1}" in
        # Convert sdm660 to msm8998
        vendor/lib/hw/vulkan.msm8998.so|vendor/lib64/hw/vulkan.msm8998.so)
          "${PATCHELF}" --set-soname "vulkan.msm8998.so" "${2}"
          ;;
        vendor/lib/hw/thermal.msm8998.so|vendor/lib64/hw/thermal.msm8998.so)
          "${PATCHELF}" --set-soname "thermal.msm8998.so" "${2}"
          ;;
        # Shim libdpmframework
        product/lib/libdpmframework.so|product/lib64/libdpmframework.so)
            "${PATCHELF}" --add-needed "libcutils_shim.so" "${2}"
            ;;
    esac
}

# Initialize the helper for common device
setup_vendor "${DEVICE_COMMON}" "${VENDOR}" "${LINEAGE_ROOT}"
extract "${MY_DIR}"/proprietary-files.txt "${SRC1}" "${SECTION}"

# Initialize the helper for device
if [ -s "${MY_DIR}/../${DEVICE}/proprietary-files.txt" ]; then
    source "${MY_DIR}/../${DEVICE}/extract-files.sh"
    setup_vendor "${DEVICE}" "${VENDOR}" "${LINEAGE_ROOT}" false ${CLEAN_VENDOR}
    extract "${MY_DIR}"/../${DEVICE}/proprietary-files.txt "${SRC2}" "${SECTION}"
fi

"${MY_DIR}"/setup-makefiles.sh
