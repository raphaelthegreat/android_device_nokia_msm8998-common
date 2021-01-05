#
# system prop for nokia msm8998
#

# ADB
#PRODUCT_PRODUCT_PROPERTIES += \
ro.adb.secure=0 \
ro.secure=1 \
ro.debuggable=0 \
persist.service.adb.enable=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hardware.vulkan=adreno \
	ro.hardware.egl=adreno \
	ro.opengles.version=196610 \
	debug.sf.enable_gl_backpressure=1 \
	debug.sf.enable_hwc_vds=1 \
	vendor.display.disable_rotator_downscale=1 \
	ro.vendor.display.cabl=2

# Volte
# Debug Options
PRODUCT_PROPERTY_OVERRIDES += \
persist.dbg.ims_volte_enable=1 \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1
# Data Options
# Commented this line out as it was reported to break WiFi calling on some carriers. Not even sure if it's required to begin with.
PRODUCT_PROPERTY_OVERRIDES += \
persist.data.iwlan.enable=true \
persist.data.iwlan=1 \
persist.data.iwlan.ipsec.ap=1
# Radio Options
PRODUCT_PROPERTY_OVERRIDES += \
persist.radio.volte.dan_support=true \
persist.radio.rat_on=combine \
persist.radio.data_ltd_sys_ind=1 \
persist.radio.data_con_rprt=1 \
persist.radio.calls.on.ims=1 \
persist.radio.VT_ENABLE=1
# Other Options
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.cust.lte_config=true \
persist.rcs.supported=1
# Activate LTE in carriermode
PRODUCT_PROPERTY_OVERRIDES += \
ro.telephony.default_network=10
