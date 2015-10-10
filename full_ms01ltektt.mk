$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)
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
	fstab.qcom \
	init.qcom.rc \
	init.qcom.usb.rc \
	MSM8226_lpm.rc \
	ueventd.qcom.rc \
	charger \
	charger_res_images

# Philz
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/extra.fstab:recovery/root/etc/extra.fstab

# TWRP
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_LOCALES += xhdpi
PRODUCT_NAME := full_ms01ltektt
PRODUCT_DEVICE := ms01ltektt
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G710K
