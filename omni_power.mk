# Release name
PRODUCT_RELEASE_NAME := Power

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Umidigi
PRODUCT_DEVICE := power
PRODUCT_MANUFACTURER := Umidigi
PRODUCT_MODEL := Umidigi Power
PRODUCT_NAME := omni_power

# ADB and treble
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    persist.sys.usb.config=mtp,adb \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    ro.secure=0 \
    ro.adb.secure=0 \
