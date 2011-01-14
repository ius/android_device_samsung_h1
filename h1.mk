# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/h1/init.rc:root/init.rc \
	device/samsung/h1/init.samsung.rc:root/init.samsung.rc

# Busybox
PRODUCT_COPY_FILES += \
	device/samsung/h1/prebuilt/busybox:system/bin/busybox

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	device/samsung/h1/TWL4030_Keypad.kl:system/usr/keylayout/TWL4030_Keypad.kl

# Generated kcm keymaps
PRODUCT_PACKAGES += TWL4030_Keypad.kcm

# Sensors
PRODUCT_PACKAGES += sensors.samsung

# ALSA
PRODUCT_COPY_FILES += \
	device/samsung/h1/asound.conf:system/etc/asound.conf

# Vold
PRODUCT_COPY_FILES += \
	device/samsung/h1/vold.fstab:system/etc/vold.fstab \

# PowerVR support
PRODUCT_COPY_FILES += \
	device/samsung/h1/prebuilt/egl/egl.cfg:system/lib/egl/egl.cfg \
	device/samsung/h1/prebuilt/egl/libGLESv1_CM_POWERVR_SGX530_121.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_121.so \
	device/samsung/h1/prebuilt/egl/libGLESv2_POWERVR_SGX530_121.so:system/lib/egl/libGLESv2_POWERVR_SGX530_121.so \
	device/samsung/h1/prebuilt/egl/libEGL_POWERVR_SGX530_121.so:system/lib/egl/libEGL_POWERVR_SGX530_121.so \
	device/samsung/h1/prebuilt/egl/pvrsrvinit:system/bin/pvrsrvinit \
	device/samsung/h1/prebuilt/egl/libsrv_um.so:system/lib/libsrv_um.so \
	device/samsung/h1/prebuilt/egl/libIMGegl.so:system/lib/libIMGegl.so \
	device/samsung/h1/prebuilt/egl/libpvr2d.so:system/lib/libpvr2d.so \
	device/samsung/h1/prebuilt/egl/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
	device/samsung/h1/prebuilt/egl/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
	device/samsung/h1/prebuilt/egl/libglslcompiler.so:system/lib/libglslcompiler.so \
	device/samsung/h1/prebuilt/egl/libsfutil.so:system/lib/libsfutil.so \
	device/samsung/h1/prebuilt/egl/libfakehal.so:system/lib/libfakehal.so \
	device/samsung/h1/prebuilt/egl/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so \
	device/samsung/h1/prebuilt/egl/pvrsrvkm.ko:system/lib/modules/pvrsrvkm.ko \
	device/samsung/h1/prebuilt/egl/omaplfb.ko:system/lib/modules/omaplfb.ko \
	device/samsung/h1/prebuilt/egl/pvrinit:system/bin/pvrinit \

# WLAN
PRODUCT_COPY_FILES += \
	device/samsung/h1/prebuilt/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
	device/samsung/h1/prebuilt/wifi/wl1271-fw.bin:system/etc/firmware/wl1271-fw.bin \
	device/samsung/h1/prebuilt/wifi/wl1271-nvs.bin:system/etc/firmware/wl1271-nvs.bin \
	device/samsung/h1/prebuilt/wifi/wl1271_sdio.ko:system/lib/modules/wl1271_sdio.ko

PRODUCT_LOCALES := hdpi en_US nl_NL

# Discard inherited values and use our own instead.
PRODUCT_NAME := h1
PRODUCT_DEVICE := h1
PRODUCT_MODEL := Samsung GT-I8320
