PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/huawei/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/huawei/u8650/u8650-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8650/overlay

# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/7k_handset.idc:system/usr/idc/7k_handset.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/sensors.idc:system/usr/idc/sensors.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/ts_test_input.idc:system/usr/idc/ts_test_input.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/cypress-ts-innolux_Ver04.idc:system/usr/idc/cypress-ts-innolux_Ver04.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-touchscreen.Ver23.idc:system/usr/idc/melfas-touchscreen.Ver23.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-touchscreen_ver23.idc:system/usr/idc/melfas-touchscreen_ver23.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/cypress-ts-innolux_Ver04.kl:system/usr/keylayout/cypress-ts-innolux_Ver04.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/melfas-touchscreen.Ver23.kl:system/usr/keylayout/melfas-touchscreen.Ver23.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/melfas-touchscreen_ver23.kl:system/usr/keylayout/melfas-touchscreen_ver23.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl

# FM
PRODUCT_PACKAGES += \
    FM

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := huawei_u8650
PRODUCT_DEVICE := u8650
PRODUCT_MODEL := huawei_u8650
