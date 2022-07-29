#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from ASUS_I005_1 device
$(call inherit-product, device/asus/I005_1/device.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/$(CUSTOM_VENDOR)/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ASUS_I005_1
PRODUCT_NAME := twrp_I005_1
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_I005D
PRODUCT_MANUFACTURER := asus
