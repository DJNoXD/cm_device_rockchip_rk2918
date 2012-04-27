#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This file includes all definitions that apply to ALL rk2918 devices, and
# are also specific to rk2918 devices
#
# Everything in this directory will become public

TARGET_PREBUILT_KERNEL := device/rockchip/rk2918/kernel
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#LOCAL_KERNEL := device/rockchip/rk2918/kernel
#else
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#DEVICE_PACKAGE_OVERLAYS := device/rockchip/rk2918/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
#PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
#PRODUCT_AAPT_PREF_CONFIG := xhdpi

#PRODUCT_PACKAGES := \
#	lights.rk2918 \
#	charger \
#	charger_res_images

#PRODUCT_PACKAGES += \
#	sensors.rk2918 \
#	libinvensense_mpl

#PRODUCT_PACKAGES += \
#	nfc.rk2918

#PRODUCT_PACKAGES += \
#	audio.primary.rk2918 \
#	audio.a2dp.default \
#	libaudioutils

#PRODUCT_PACKAGES += \
#	rk2918_hdcp_keys

PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel \
	device/rockchip/rk2918/init.rk29board.rc:root/init.rk29board.rc \
	device/rockchip/rk2918/init.rk2918.usb.rc:root/init.rk2918.usb.rc \
	device/rockchip/rk2918/ueventd.rk29board.rc:root/ueventd.rk29board.rc \
#	device/rockchip/rk2918/vendor/rk29xxnand_ko.ko.2.6.32.27:root/rk29xxnand_ko.ko.2.6.32.27 \
#	device/rockchip/rk2918/vendor/rk29xxnand_ko.ko.3.0.8+:root/rk29xxnand_ko.ko.3.0.8+ \
#	device/rockchip/rk2918/media_profiles.xml:system/etc/media_profiles.xml \
#	device/rockchip/rk2918/gps.conf:system/etc/gps.conf

# Bluetooth configuration files
#PRODUCT_COPY_FILES += \
#	system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Wifi
#ifneq ($(TARGET_PREBUILT_WIFI_MODULE),)
#PRODUCT_COPY_FILES += \
#	$(TARGET_PREBUILT_WIFI_MODULE):system/lib/modules/bcmdhd.ko
#endif
#PRODUCT_COPY_FILES += \
#	device/rockchip/rk2918/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

#PRODUCT_PROPERTY_OVERRIDES := \
#	wifi.interface=wlan0 \
#	wifi.supplicant_scan_interval=15

# Set default USB interface
#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#	persist.sys.usb.config=mtp

# NFC
#PRODUCT_PACKAGES += \
#        libnfc \
#        libnfc_jni \
#        Nfc \
#        Tag

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

# Key maps
#PRODUCT_COPY_FILES += \
#	device/rockchip/rk2918/rk2918-gpio-keypad.kl:system/usr/keylayout/rk2918-gpio-keypad.kl \
#	device/rockchip/rk2918/rk2918-gpio-keypad.kcm:system/usr/keychars/rk2918-gpio-keypad.kcm \
#	device/rockchip/rk2918/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
#	device/rockchip/rk2918/sec_jack.kcm:system/usr/keychars/sec_jack.kcm

# Input device calibration files
#PRODUCT_COPY_FILES += \
#	device/rockchip/rk2918/Melfas_MMSxxx_Touchscreen.idc:system/usr/idc/Melfas_MMSxxx_Touchscreen.idc

# These are the hardware-specific features
#PRODUCT_COPY_FILES += \
#	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
#	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
#	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
#	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
#	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
#	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
#	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
#	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
#	frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
#	frameworks/base/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
#	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
#	frameworks/base/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
#	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
#	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
#	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# HACK: copy panda init for now to boot on both boards
#PRODUCT_COPY_FILES += \
#	device/ti/panda/init.omap4pandaboard.rc:root/init.omap4pandaboard.rc

# Melfas touchscreen firmware
#PRODUCT_COPY_FILES += \
#    device/rockchip/rk2918/mms144_ts_rev31.fw:system/vendor/firmware/mms144_ts_rev31.fw \
#    device/rockchip/rk2918/mms144_ts_rev32.fw:system/vendor/firmware/mms144_ts_rev32.fw

# Portrait dock image
PRODUCT_COPY_FILES += \
    device/rockchip/rk2918/dock.png:system/vendor/res/images/dock/dock.png

# Commands to migrate prefs from com.android.nfc3 to com.android.nfc
#PRODUCT_COPY_FILES += \
#	packages/apps/Nfc/migrate_nfc.txt:system/etc/updatecmds/migrate_nfc.txt

# file that declares the MIFARE NFC constant
#PRODUCT_COPY_FILES += \
#	device/sample/nxp/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

# NFC EXTRAS add-on API
#PRODUCT_PACKAGES += \
#	com.android.nfc_extras
#PRODUCT_COPY_FILES += \
#	frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# NFCEE access control
#ifeq ($(TARGET_BUILD_VARIANT),user)
#    NFCEE_ACCESS_PATH := device/rockchip/rk2918/nfcee_access.xml
#else
#    NFCEE_ACCESS_PATH := device/rockchip/rk2918/nfcee_access_debug.xml
#endif
#PRODUCT_COPY_FILES += \
#    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320

#PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

# for bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
	system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
	system/extras/bugmailer/send_bug:system/bin/send_bug

#$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)

#$(call inherit-product-if-exists, vendor/nxp/pn544/nxp-pn544-fw-vendor.mk)
#$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
#$(call inherit-product-if-exists, vendor/ti/proprietary/omap4/ti-omap4-vendor.mk)
$(call inherit-product-if-exists, vendor/rockchip/rk2918/device-vendor.mk)

#BOARD_WLAN_DEVICE_REV := bcm4330_b2
#WIFI_BAND             := 802_11_ABG
#$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
