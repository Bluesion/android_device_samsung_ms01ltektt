## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ms01ltektt

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/ms01ltektt/full_ms01ltektt.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ms01ltektt
PRODUCT_NAME := ms01ltektt
PRODUCT_BRAND := samsung
PRODUCT_MODEL := ms01ltektt
PRODUCT_MANUFACTURER := samsung
