# Everything in this directory will become public

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

#PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

#Default USB mount
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Hardware modules to build
PRODUCT_PACKAGES += \
    hwcomposer.msm8974 \
    gralloc.msm8974 \
    copybit.msm8974 \
    memtrack.msm8974 \
    audio.primary.msm8974 \
    audio_policy.msm8974 \
    lights.qcom \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    camera-wrapper.msm8974 \
    libaudio-resampler \
    audiod \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    keystore.msm8974

#   power.msm8974 \

PRODUCT_PACKAGES += \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libOmxVdec \
    libOmxVenc \
    libOmxCore \
    libstagefrighthw \
    libc2dcolorconvert \
    libxml2 \
    libboringssl-compat

#    libOmxAacEnc \
#    libOmxAmrEnc \
#    libOmxEvrcEnc \
#    libOmxQcelp13Enc \

# wifi
PRODUCT_PACKAGES += \
    wcnss_service \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf \
    dhcpcd.conf


# Properties

# bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608 \
    persist.hwc.mdpcomp.enable=true

# Do not power down SIM card when modem is sent to Low Power Mode.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1

# Ril sends only one RIL_UNSOL_CALL_RING, so set call_ring.multiple to false
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=0

# Ril
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so

# Cell Broadcasts
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cellbroadcast.emergencyids=0-65534

PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnGSMDevice=1 \
    ro.telephony.default_network=9

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Enable AAC 5.1 output
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true

# qcom
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.audio.fluence.voicecall=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=true \
    use.voice.path.for.pcm.voip=true \
    audio.offload.video=true \
    av.streaming.offload.enable=false \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.multiple.enabled=false

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/vendor/lib/libqti-perfd-client.so

# gps
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    ro.gps.agps_provider=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.camera.facialproc=true \
    ro.qc.sdk.gestures.camera=false \
    ro.qti.sdk.sensors.gestures=true \
    ro.qti.sensors.bte=true \
    ro.qti.sensors.gtap=true \
    ro.qti.sensors.vmd=true