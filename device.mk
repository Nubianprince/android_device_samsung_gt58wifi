#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gt58wifi/gt58wifi-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gte-common/device-common.mk)

LOCAL_PATH := device/samsung/gt58wifi
    
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

CONFIG_PATH := hardware/qcom/audio-caf/msm8916/configs

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

# Audio configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Platform info config
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.video=true \
    av.streaming.offload.enable=true \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    ro.dualmic=true

# Ramdisk
PRODUCT_PACKAGES += \
	init.target.rc
