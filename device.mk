#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gt58wifi/gt58wifi-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gte-common/device-common.mk)

LOCAL_PATH := device/samsung/gt58wifi

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt58wifi/overlay