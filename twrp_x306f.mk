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

# Inherit from x306f device
$(call inherit-product, device/lenovo/x306f/device.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x306f
PRODUCT_NAME := twrp_x306f
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-x306f
PRODUCT_MANUFACTURER := lenovo
