# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

$(call inherit-product, device/samsung/gt58wifi/device.mk)
$(call inherit-product-if-exists, vendor/samsung/gt58wifi/gt58wifi-vendor.mk)

# Boot animation
BOOT_ANIMATION_SIZE := xga

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_gt58wifi
PRODUCT_DEVICE := gt58wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T350
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gt58wifixx-user 7.1.1 NMF26X T350XXU1CQJ5 release-keys"

BUILD_FINGERPRINT := "samsung/gt58wifixx/gt58wifi:7.1.1/NMF26X/T350XXU1CQJ5:user/release-keys"
