#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from pond device
$(call inherit-product, device/xiaomi/pond/device.mk)

PRODUCT_DEVICE := pond
PRODUCT_NAME := omni_pond
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 14C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pond_global-user 14 SP1A.210812.016 V816.0.13.0.UNTMIXM:user release-keys"

BUILD_FINGERPRINT := Redmi/pond_global/pond:14/SP1A.210812.016/V816.0.13.0.UGTMIXM:user/release-keys
