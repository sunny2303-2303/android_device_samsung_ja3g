## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ja3g

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/ja3g/device_ja3g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ja3g
PRODUCT_NAME := cm_ja3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := ja3g
PRODUCT_MANUFACTURER := samsung
