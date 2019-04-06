# Inherit from common
include device/samsung/gte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gt58wifi

# Include board config fragments
include device/samsung/gt58wifi/board/*.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := gt58wifi,gt58wifixx,SM-T350

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt58wifi_eur_defconfig


# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912

# Ramdisk
BOARD_ROOT_EXTRA_FOLDERS := dsp efs firmware firmware-modem persist
BOARD_ROOT_EXTRA_SYMLINKS += /data/tombstones:/tombstones


