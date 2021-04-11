# Copyright (C) 2021The LineageOS Project
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

DEVICE_FOLDER := device/samsung/gt58wifi

# Architecture/platform
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
HAVE_SYNAPTICS_I2C_RMI4_FW_UPGRADE := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := msm8916

# Decrypt
BOARD_USES_QCOM_DECRYPTION := true

# Encryption
TARGET_LEGACY_HW_DISK_ENCRYPTION := true
TARGET_HW_KEYMASTER_V03 := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

ifeq ($(RECOVERY_VARIANT),twrp)
    TARGET_HW_DISK_ENCRYPTION := false
    TARGET_SWV8_DISK_ENCRYPTION := false
else
    TARGET_HW_DISK_ENCRYPTION := true
    TARGET_SWV8_DISK_ENCRYPTION := true
endif

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
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/bootimg.mk
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
LZMA_RAMDISK_TARGETS := recovery
TARGET_KERNEL_CONFIG := msm8916_sec_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SELINUX_LOG_CONFIG := selinux_log_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt58wifi_eur_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/msm8916
TARGET_CUSTOM_DTBTOOL := dtbToolLineage

# Kernel - Toolchain
ifneq ($(wildcard $(BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-7.2/bin),)
    KERNEL_TOOLCHAIN := $(BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-7.2/bin
    KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
endif

# Snapdragon LLVM
TARGET_USE_SDCLANG := false

# Assertss
TARGET_OTA_ASSERT_DEVICE := gt58wifi,gt58wifixx,SM-T350

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138262512 # 12138295296 - 32768 for encryption

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_FOLDER)/sepolicy
    
#Debugging
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

BOARD_HAS_NO_REAL_SDCARD := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true

TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery/root/etc/twrp.fstab
    
# Recovery - TWRP
TW_CUSTOM_THEME := $(DEVICE_FOLDER)/theme/stock
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_HAS_DOWNLOAD_MODE := true
TW_HAS_MTP := true
TW_INCLUDE_CRYPTO := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_MAX_BRIGHTNESS := 255
TW_MTP_DEVICE := /dev/mtp_usb
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_USB_STORAGE := true
TW_DEVICE_VERSION := 1_nubianprince
