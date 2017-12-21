TWRP device tree for IUNI U3 on Omnirom 4.4
==============================================


**1. TWRP:**

    mkdir twrp-4.4
    cd twrp-4.4
    repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-4.4
    repo sync


**Then copy "local_manifests" folder into .repo or:**


**2. Device on device/iuni**

    git clone https://github.com/Abdess/twrp_device_iuni_u3.git u3 -b omni-4.4


**3. Kernel on kernel/iuni/:**

    git clone https://github.com/Abdess/android_kernel_iuni_u3.git -b original msm8974


**4. Compilation:**

    . build/envsetup.sh
    lunch omni_u3-userdebug
    make recoveryimage