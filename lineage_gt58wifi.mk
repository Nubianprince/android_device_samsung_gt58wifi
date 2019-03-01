# Inherit from common
$(call inherit-product, device/samsung/gte-common/lineage.mk)

# Product makefile
$(call inherit-product, device/samsung/gt58wifi/device.mk)


# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 768

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gt58wifi
PRODUCT_NAME := lineage_gt58wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T350
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung
