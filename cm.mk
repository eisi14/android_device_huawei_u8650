# Boot Animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for u8650.
$(call inherit-product, device/huawei/u8650/u8650.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

PRODUCT_NAME := cm_u8650
PRODUCT_BRAND := Huawei
PRODUCT_DEVICE := u8650
PRODUCT_MODEL := U8650
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=huawei_u8650 \
    BUILD_FINGERPRINT="Huawei/U8650/u8650:4.1.2/HuaweiU8650/C169B831:user/ota-rel-keys,release-keys" \
    PRIVATE_BUILD_DESC="Sonic-user 4.1.2 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := U8650
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
