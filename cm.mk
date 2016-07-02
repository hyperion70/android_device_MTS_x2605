# Release name
PRODUCT_RELEASE_NAME := SMART Race LTE

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/MTS/x2605/device_x2605.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# set locales & aapt config.
PRODUCT_LOCALES := ru_RU en_US
PRODUCT_AAPT_CONFIG := normal xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x2605
PRODUCT_NAME := cm_x2605
PRODUCT_BRAND := MTS
PRODUCT_MODEL := MTS x2605
PRODUCT_MANUFACTURER := MTS
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_DEFAULT_LANGUAGE := ru
PRODUCT_DEFAULT_REGION   := RU
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.timezone=Europe/Moscow
