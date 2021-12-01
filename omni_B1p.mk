#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from TECNO-B1p device
$(call inherit-product, device/tecno/B1p/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/pb/config/common.mk)
$(call inherit-product, vendor/pb/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := B1p
PRODUCT_NAME := omni_B1p
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO B1p
PRODUCT_MANUFACTURER := tecno
