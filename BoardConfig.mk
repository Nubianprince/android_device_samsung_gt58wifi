# Inherit from common
include device/samsung/gte-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/gt58wifi

# Asserts
TARGET_OTA_ASSERT_DEVICE := gt58wifi,gt58wifixx,SM-T350

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt58wifi_eur_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/gt58wifi

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912


##################### ADDITIONS ######################################################



ALLOW_MISSING_DEPENDENCIES :=true


# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Architecture
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true

# Audio
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Kernel
BOARD_DTBTOOL_ARG := -2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000

RECOVERY_VARIANT := twrp


TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS:= true


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true


# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/msm8916-common/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/msm8916-common/recovery/recovery_keys.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true


#TWRP
TW_THEME := portrait_mdpi
TW_BRIGHTNESS_PATH := "/sys/devices/soc.0/1a00000.qcom\x2cmdss_mdp/qcom\x2cmdss_fb_primary.139/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_NEW_ION_HEAP := true
TW_TARGET_USES_QCOM_BSP := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_USB_STORAGE := true
TW_MTP_DEVICE := /dev/mtp_usb
TW_INCLUDE_CRYPTO := true


##################### ADDITIONS ######################################################
