# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from m10lte device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := m10lte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_m10lte
PRODUCT_MODEL := SM-M105G

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := m10lte
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="m10ltedx-user 10 QP1A.190711.020 M105GDXS8CVA1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/m10ltedx/m10lte:10/QP1A.190711.020/M105GDXS8CVA1:user/release-keys
