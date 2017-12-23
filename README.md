TWRP device tree for IUNI U3 on Omnirom 6.0
==============================================


**1. TWRP:**

    mkdir twrp-6.0
    cd twrp-6.0
    repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-6.0
    repo sync


**2. Device on device/iuni**

    git clone https://github.com/Abdess/twrp_device_iuni_u3.git u3 -b omni-6.0


**3. Kernel on kernel/iuni/:**

    git clone https://github.com/Abdess/android_kernel_iuni_u3.git -b LA.BF.1.1.3_rb1.15 msm8974


**4. Compilation:**

    . build/envsetup.sh
    lunch omni_u3-userdebug
    make recoveryimage