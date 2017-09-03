TWRP device tree for IUNI U3 on LineageOS 14.1
==============================================


**1. TWRP:**

    mkdir twrp-14.1
    cd twrp-14.1
    repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_lineageos.git -b twrp-14.1
    repo sync


**Then copy "local_manifests" folder into .repo or:**


**2. Device on device/iuni**

    git clone https://github.com/Abdess/twrp_device_iuni_u3.git u3 -b lineageos-14.1


**3. Kernel on kernel/iuni/:**

    git clone https://github.com/Abdess/android_kernel_iuni_u3.git msm8974


**4. Compilation:**

    . build/envsetup.sh
    lunch lineage_u3-userdebug
    make recoveryimage