# Audio
PRODUCT_PROPERTY_OVERRIDES += \
	audio.offload.min.duration.secs=30 \
	audio.offload.video=false \
	vendor.audio.offload.track.enable=false \
	vendor.audio.offload.multiaac.enable=true \
	audio.deep_buffer.media=true \
	ro.af.client_heap_size_kbyte=7168 \
	af.fast_track_multiplier=1 \
	vendor.audio_hal.period_size=192 \
	ro.vendor.audio.sdk.fluencetype=none \
	persist.vendor.audio.fluence.voicecall=true \
	persist.vendor.audio.fluence.voicerec=false \
	persist.vendor.audio.fluence.speaker=true \
	vendor.audio.tunnel.encode=false \
	persist.vendor.audio.ras.enabled=false \
	vendor.audio.offload.buffer.size.kb=32 \
	vendor.voice.conc.fallbackpath=deep-buffer \
	vendor.voice.path.for.pcm.voip=true \
	vendor.voice.playback.conc.disabled=true \
	vendor.voice.record.conc.disabled=false \
	vendor.voice.voip.conc.disabled=true
	vendor.audio.offload.multiple.enabled=false \
	vendor.audio.offload.passthrough=false \
	ro.vendor.audio.sdk.ssr=false \
	vendor.audio.offload.gapless.enabled=true \
	vendor.audio.safx.pbe.enabled=true \
	vendor.audio.parser.ip.buffer.size=262144 \
	vendor.audio.flac.sw.decoder.24bit=true \
	persist.vendor.bt.a2dp_offload_cap=sbc-aptx-aptxhd-aac \
	vendor.audio.use.sw.alac.decoder=true \
	vendor.audio.use.sw.ape.decoder=true \
	vendor.audio.hw.aac.encoder=true \
	vendor.audio.noisy.broadcast.delay=600 \
	vendor.audio.offload.pstimeout.secs=3 \
	persist.vendor.audio.hw.binder.size_kbyte=1024

# Audio Feature
PRODUCT_PROPERTY_OVERRIDES += \
	vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.feature.a2dp_offload.enable=false \
    vendor.audio.feature.afe_proxy.enable=true \
    vendor.audio.feature.anc_headset.enable=true \
    vendor.audio.feature.battery_listener.enable=false \
    vendor.audio.feature.compr_cap.enable=false \
    vendor.audio.feature.compress_in.enable=false \
    vendor.audio.feature.compress_meta_data.enable=true \
    vendor.audio.feature.compr_voip.enable=true \
    vendor.audio.feature.concurrent_capture.enable=false \
    vendor.audio.feature.custom_stereo.enable=true \
    vendor.audio.feature.display_port.enable=true \
    vendor.audio.feature.dsm_feedback.enable=false \
    vendor.audio.feature.dynamic_ecns.enable=false \
    vendor.audio.feature.ext_hw_plugin.enable=false \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.external_speaker_tfa.enable=false \
    vendor.audio.feature.fluence.enable=true \
    vendor.audio.feature.fm.enable=true \
    vendor.audio.feature.hdmi_edid.enable=false \
    vendor.audio.feature.hdmi_passthrough.enable=false \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.hifi_audio.enable=false \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=false \
    vendor.audio.feature.multi_voice_session.enable=true \
    vendor.audio.feature.keep_alive.enable=false \
    vendor.audio.feature.kpi_optimize.enable=true \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.ras.enable=true \
    vendor.audio.feature.record_play_concurency.enable=false \
    vendor.audio.feature.src_trkn.enable=true \
    vendor.audio.feature.spkr_prot.enable=false \
    vendor.audio.feature.ssrec.enable=false \
    vendor.audio.feature.usb_offload.enable=true \
    vendor.audio.feature.usb_offload_burst_mode.enable=false \
    vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
    vendor.audio.feature.deepbuffer_as_primary.enable=false \
    vendor.audio.feature.vbat.enable=true \
    vendor.audio.feature.wsa.enable=false \
    vendor.audio.feature.audiozoom.enable=false \
    vendor.audio.feature.snd_mon.enable=false \

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.qcom.bluetooth.soc=cherokee

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
	vidc.enc.dcvs.extra-buff-count=2 \
	vendor.camera.aux.packagelist=org.codeaurora.snapcam,org.lineageos.snap \
	persist.vendor.camera.gyro.android=0 \
	persist.vendor.camera.gyro.disable=0 \
	persist.vendor.camera.fovc.enable=1 \
	ro.camera.switch.anim.delay=300 \
	ro.camera.record.anim.delay=200 \
	persist.capture.burst.exposures=0,-6,6 \
	persist.vendor.camera.ven_hdr=0 \
	vendor.camera.c2d.rotation=1 \
	persist.camera.ffcolor=ffebb4 \
	persist.vendor.camera.fdvideo=1

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
	persist.vendor.cne.feature=1

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.heapgrowthlimit=256m \
	dalvik.vm.heapstartsize=8m \
	dalvik.vm.heapsize=512m \
	dalvik.vm.heaptargetutilization=0.75 \
	dalvik.vm.heapminfree=512k \
	dalvik.vm.heapmaxfree=8m

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
	ro.frp.pst=/dev/block/bootdevice/by-name/frp \
	qemu.hw.mainkeys=1 \
	ro.boot.gxfp_lv=true \
	sys.gxfp.lv=1 \
	ro.boot.fp=goodix \
	ro.hardware.fingerprint=goodix

# HWUI properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hwui.texture_cache_size=72 \
	ro.hwui.layer_cache_size=48 \
	ro.hwui.r_buffer_cache_size=8 \
	ro.hwui.path_cache_size=32 \
	ro.hwui.gradient_cache_size=1 \
	ro.hwui.drop_shadow_cache_size=6 \
	ro.hwui.texture_cache_flushrate=0.4 \
	ro.hwui.text_small_cache_width=1024 \
	ro.hwui.text_small_cache_height=1024 \
	ro.hwui.text_large_cache_width=2048 \
	ro.hwui.text_large_cache_height=4096

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
	ro.nfc.port=I2C \
	ro.boot.nfc=nxp \
	ro.hardware.nfc_nci=nqx.default

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=1 \
	ro.qualcomm.cabl=2 \
	ril.subscription.types=NV,RUIM \
	ro.vendor.use_data_netmgrd=true \
	persist.data.netmgrd.qos.enable=true \
	persist.vendor.data.mode=concurrent \
	persist.timed.enable=true \
	persist.radio.oem_socket=true \
	persist.radio.flexmap_type=nw_mode \
	persist.radio.adb_log_on=3 \
	persist.radio.process_sups_ind=1 \
	persist.vendor.radio.lte_vrte_ltd=1 \
	persist.radio.multisim.config=dsds \
	persist.vendor.radio.apm_sim_not_pwdn=1 \
	persist.vendor.radio.sib16_support=1 \
	persist.vendor.radio.custom_ecc=1 \
	persist.vendor.radio.rat_on=combine \
	ro.telephony.default_network=22,20 \
	rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
	vendor.rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
	ro.carrier=unknown \
	keyguard.no_require_sim=true \
	ro.com.android.dataroaming=true \
	vendor.service.qti.ims.enabled=1

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.extension_library=libqti-perfd-client.so \
	ro.vendor.qti.core_ctl_min_cpu=2 
	ro.vendor.qti.core_ctl_max_cpu=4

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.sensors.dev_ori=false \
	ro.vendor.sensors.pmd=true \
	ro.vendor.sensors.sta_detect=true \
	ro.vendor.sensors.mot_detect=true \
	ro.vendor.sensors.dpc=true \
	ro.vendor.sensors.multishake=true \
	persist.vendor.sensors.direct_channel=true

# Rmnet
PRODUCT_PROPERTY_OVERRIDES += \
	persist.rmnet.data.enable=true \
	persist.data.wda.enable=true \
	persist.data.df.dl_mode=5 \
	persist.data.df.ul_mode=5 \
	persist.data.df.agg.dl_pkt=10 \
	persist.data.df.agg.dl_size=4096 \
	persist.data.df.mux_count=8 \
	persist.data.df.iwlan_mux=9 \
	persist.data.df.dev_name=rmnet_usb0

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
	ro.boot.wificountrycode=US \
	wifi.interface=wlan0

# WFD
PRODUCT_PROPERTY_OVERRIDES += \
	persist.debug.wfd.enable=1 \
	persist.sys.wfd.virtual=0 \
	persist.hwc.enable_vds=1
