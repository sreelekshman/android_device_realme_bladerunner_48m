#
# Copyright (C) 2023 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bladerunner device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common BlissROMs stuff
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# UDFPS Animations
EXTRA_UDFPS_ANIMATIONS := true

PRODUCT_NAME := bliss_bladerunner_48m
PRODUCT_DEVICE := bladerunner_48m
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2072
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_NAME := RMX2072
PRODUCT_SYSTEM_DEVICE := RMX2072CN

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
