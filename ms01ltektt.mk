$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/ms01ltektt/ms01ltektt-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/ms01ltektt/overlay

LOCAL_PATH := device/samsung/ms01ltektt
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Ramdisk
 PRODUCT_PACKAGES += \
 	fstab.qcom

# TWRP
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_LOCALES += xhdpi
PRODUCT_NAME := ms01ltektt
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_DEVICE := ms01ltektt
PRODUCT_MODEL := SM-G710K
