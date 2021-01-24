# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true

BUILD_TOP := $(shell pwd)

DEVICE_FOLDER := device/samsung/gt58wifi

# Architecture/platform
BOARD_VENDOR := samsung
FORCE_32_BIT := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU       := qcom-adreno306
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_CORTEX_A53 := true
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8916

# Encryption
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TW_INCLUDE_CRYPTO := true


# Kernel
BOARD_KERNEL_CMDLINE += \
	console=null \
	androidboot.hardware=qcom \
	user_debug=23 \
	msm_rtb.filter=0x3F \
	ehci-hcd.park=3 \
	androidboot.bootdevice=7824900.sdhci \
	androidboot.selinux=permissive

BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
LZMA_RAMDISK_TARGETS := recovery
TARGET_KERNEL_CONFIG := msm8916_sec_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SELINUX_LOG_CONFIG := selinux_log_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt58wifi_eur_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/msm8916

# Asserts
TARGET_OTA_ASSERT_DEVICE := gt58wifi,gt58wifixx,SM-T350

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11676942336
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS:= true

TARGET_COPY_OUT_VENDOR := system/vendor

# Recovery - TWRP
RECOVERY_VARIANT := twrp

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := $(DEVICE_FOLDER)/recovery/recovery_keys.c
BOARD_HAS_NO_MISC_PARTITION	:= true
BOARD_HAS_NO_SELECT_BUTTON	:= true
BOARD_RECOVERY_SWIPE 		:= true
BOARD_SUPPRESS_EMMC_WIPE	:= true
BOARD_SUPPRESS_SECURE_ERASE	:= true
BOARD_USE_CUSTOM_RECOVERY_FONT	:= \"roboto_23x41.h\"
BOARD_USES_MMCUTILS	:= true
RECOVERY_GRAPHICS_USE_LINELENGTH	:= true
RECOVERY_SDCARD_ON_DATA	:= true
TARGET_RECOVERY_DENSITY	:= hdpi
TARGET_RECOVERY_FSTAB	:= $(DEVICE_FOLDER)/recovery/etc/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT	:= "RGB_565"
TARGET_RECOVERY_QCOM_RTC_FIX	:= true

# Recovery - TWRP
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_HAS_DOWNLOAD_MODE := true
TW_HAS_MTP := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "accelerometer\x0ahbtp_vm"
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_MAX_BRIGHTNESS := 255
TW_MTP_DEVICE := /dev/mtp_usb
TW_NEW_ION_HEAP := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_USB_STORAGE := true
TW_TARGET_USES_QCOM_BSP := false
TW_THEME := portrait_hdpi
