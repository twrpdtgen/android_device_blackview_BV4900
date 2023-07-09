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
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from BV4900 device
$(call inherit-product, device/blackview/BV4900/device.mk)

PRODUCT_DEVICE := BV4900
PRODUCT_NAME := omni_BV4900
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := BV4900
PRODUCT_MANUFACTURER := blackview

PRODUCT_GMS_CLIENTID_BASE := android-hct

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k61v1_64_bsp-user 10 QP1A.190711.020 mp1k61v164bspP4 release-keys"

BUILD_FINGERPRINT := Blackview/BV4900_RU/BV4900:10/QP1A.190711.020/1641435215:user/release-keys
