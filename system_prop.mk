#
# system prop for nokia msm8998
#

# Audio
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    audio.deep_buffer.media=true \
    audio.offload.video=true

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.dex2oat64.enabled=true \
    ro.sys.fw.dex2oat_thread_count=8

# Graphics
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.surface_flinger.has_HDR_display=false \
    ro.surface_flinger.has_wide_color_display=false \
    ro.surface_flinger.use_color_management=false \
    ro.surface_flinger.supports_background_blur=true

# Misc
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.radio.oem_socket=true \
    persist.env.fastdorm.enabled=true \
    persist.data.tcp_rst_drop=true \
    persist.sys.wifi_log_enable=false \
    persist.sys.MNC=UNKNOW

# Radio
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.vendor.radio.lte_vrte_ltd=true \
    persist.vendor.radio.voice_on_lte=true \
    persist.vendor.data.iwlan.enable=true \
    persist.ims.enableADBLogs=true \
    persist.ims.enableDebugLogs=true \
    persist.data.iwlan.enable=true \
    persist.radio.flexmap_type=false \
    ro.telephony.default_network=22

# Voice assistant
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.opa.eligible_device=true

# Wifi Display
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.hwc.enable_vds=true