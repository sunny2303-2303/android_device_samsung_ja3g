# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := ja3g

# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 1920

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9300/full_ja3g.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ja3g
PRODUCT_NAME := cm_ja3g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := ja3g
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=ja3gxx TARGET_DEVICE=ja3g BUILD_FINGERPRINT="samsung/ja3gxx/ja3g:4.2.2/JDQ39/I9500XXUAMCH:user/release-keys" PRIVATE_BUILD_DESC="ja3gxx-user 4.2.2 JDQ39 I9500XXUAMCH release-keys"
