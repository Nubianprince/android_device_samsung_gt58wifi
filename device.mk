#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gt58wifi/gt58wifi-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gte-common/device-common.mk)

LOCAL_PATH := device/samsung/gt58wifi
CONFIG_PATH := hardware/qcom/audio-caf/msm8916/configs

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/mixer_paths.xml
    
# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/iop_bt.db:system/etc/bluetooth/iop_bt.db \
    $(LOCAL_PATH)/configs/bluetooth/iop_device_list.conf:system/etc/bluetooth/iop_device_list.conf

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/A05QF_sr544_module_info.xml:system/etc/A05QF_sr544_module_info.xml \
    $(LOCAL_PATH)/configs/camera/A05QF_sr544_module_info.xml:system/etc/B05QF_sr544_module_info.xml \
    $(LOCAL_PATH)/configs/camera/A05QF_sr544_module_info.xml:system/etc/C05QF_sr544_module_info.xml
    
# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt58wifi/overlay

    
# Device specific properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=0 \
    ro.carrier=wifi-only \
    ro.radio.noril=1 \
    ro.config.low_ram=false \
    ro.config.zram=false \
    ro.sf.lcd_density=200 \
    telephony.lteOnCdmaDevice=0
    

# Better Internet Speed
PRODUCT_PROPERTY_OVERRIDES += \
net.tcp.buffersize.default=4096,87380,256960,4096, 16384,256960 \
net.tcp.buffersize.wifi=4096,87380,256960,4096,163 84,256960 \
net.tcp.buffersize.umts=4096,87380,256960,4096,163 84,256960 \
net.tcp.buffersize.gprs=4096,87380,256960,4096,163 84,256960 \
net.tcp.buffersize.edge=4096,87380,256960,4096,163 84,256960 \
net.rmnet0.dns1=8.8.8.8 \
net.rmnet0.dns2=8.8.4.4 \
net.dns1=8.8.8.8 \
net.dns2=8.8.4.4

# Quick Power On
PRODUCT_PROPERTY_OVERRIDES += \
ro.config.hw_quickpoweron=true

BUILD_FINGERPRINT=samsung/gt58wifixx/gt58wifi:7.1.1/NMF26X/T350XXU1CQJ1:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
  TARGET_DEVICE=gt58wifi \
  PRODUCT_NAME=gt58wifixx \
  PRIVATE_BUILD_DESC="gt58wifixx-user 7.1.1 NMF26X T350XXU1CQJ1 release-keys"
