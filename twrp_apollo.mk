#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from umi device
$(call inherit-product, device/xiaomi/apollo/device.mk)

PRODUCT_DEVICE := apollo
PRODUCT_NAME := twrp_apollo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 10T
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_apollo-eng 99.86.37 SP2A.220405.004 eng.noodle.20220908.072902 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_apollo/umi:99.86.37/SP2A.220405.004/noodle09080728:eng/test-keys
