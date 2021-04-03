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

# Inherit from common
include device/samsung/gta-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gt58wifi

# Asserts
TARGET_OTA_ASSERT_DEVICE := gt58wifi,gt58wifixx,SM-T350

TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /vendor/lib/hw/audio.primary.msm8916.so=25 \
    /vendor/lib/hw/camera.vendor.msm8916.so=25 \
    /vendor/lib/hw/sensors.vendor.msm8916.so=25

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gt58wifi_eur_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Build config
BUILD_BROKEN_DUP_RULES := true

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_gt58wifi
TARGET_RECOVERY_DEVICE_MODULES := $(DEVICE_PATH)/init

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12138278912

# Vendor SPL
VENDOR_SECURITY_PATCH := "2017-08-01"
