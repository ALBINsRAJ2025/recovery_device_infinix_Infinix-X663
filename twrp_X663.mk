#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# ==============================================================================
# Base Products (most specific first)
# ==============================================================================
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Installs GSI keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Device configuration
$(call inherit-product, device/infinix/X663/device.mk)

# Common TWRP config
$(call inherit-product, vendor/twrp/config/common.mk)

# ==============================================================================
# Product Identity (must come after all inherit-product includes)
# ==============================================================================
PRODUCT_DEVICE := X663
PRODUCT_NAME := twrp_X663
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix NOTE 11
PRODUCT_MANUFACTURER := infinix

