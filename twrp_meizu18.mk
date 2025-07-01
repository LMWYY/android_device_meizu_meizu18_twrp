#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from meizu18 device
$(call inherit-product, device/meizu/meizu18/device.mk)

PRODUCT_DEVICE := meizu18
PRODUCT_NAME := twrp_meizu18
PRODUCT_BRAND := meizu
PRODUCT_MODEL := MEIZU 18
PRODUCT_MANUFACTURER := meizu

PRODUCT_GMS_CLIENTID_BASE := android-meizu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="meizu_18_CN-user 13 TKQ1.221114.001 1682814786 release-keys"

BUILD_FINGERPRINT := meizu/meizu_18_CN/meizu18:13/TKQ1.221114.001/1682814786:user/release-keys
