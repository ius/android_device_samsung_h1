Android for Samsung H1 (GT-I8320)
=================================

Preface
-------

This is a work-in-progress port of Android to the Samsung H1, based on a recent kernel (2.6.36).

Building
--------

Currently there are three external dependencies required in order to build Android. Unless stated otherwise, all commands should be run from the device/samsung/h1/ directory.

1. Kernel modules (omaplfb.ko, pvrsrvkm.ko, wl1271_sdio.ko)

You can either build these modules yourself, or use the supplied script to download prebuilt modules.

    ./scripts/fetch_modules.sh

2. wl1271 NVS

The wl1271 NVS file contains both (device-specific) calibration data and radio parameters. The radio parameters are included, but calibration data has to be provided.

Reusing existing calibration data (nvs_map.bin, 332b, found on H1's moviNAND) appears to work. You can craft wl2171-nvs.bin from nvs_map.bin and the supplied wl1271-radio.bin.

    ./scripts/make_nvs.sh /path/to/nvs_map.bin

3. PowerVR SGX userland components

The following PowerVR SGX binaries can be obtained from the TI OMAP3530 Android graphics SDK: git://gitorious.org/rowboat/ti_android_sgx_sdk.git

    prebuilt/egl/libPVRScopeServices.so
    prebuilt/egl/libpvr2d.so
    prebuilt/egl/libGLESv1_CM_POWERVR_SGX530_121.so
    prebuilt/egl/libGLESv2_POWERVR_SGX530_121.so
    prebuilt/egl/egl.cfg
    prebuilt/egl/libIMGegl.so
    prebuilt/egl/libpvrANDROID_WSEGL.so
    prebuilt/egl/libfakehal.so
    prebuilt/egl/gralloc.omap3.so
    prebuilt/egl/libEGL_POWERVR_SGX530_121.so
    prebuilt/egl/libglslcompiler.so
    prebuilt/egl/libsrv_um.so
    prebuilt/egl/libsfutil.so
    prebuilt/egl/pvrsrvinit

Contributing / contact
----------------------

Contributions are most welcome. Find me on Freenode (irc.freenode.net #h1) or mail h1 at pargon nl.
