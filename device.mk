# This file includes all definitions that apply to ALL find7a devices, and
# are also specific to find7a devices
#
# Everything in this directory will become public

LOCAL_PATH := device/iuni/u3

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/fstab.u3:root/fstab.qcom \
    $(LOCAL_PATH)/configs/twrp.fstab:recovery/root/etc/twrp.fstab

# Properties
#PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480 \
