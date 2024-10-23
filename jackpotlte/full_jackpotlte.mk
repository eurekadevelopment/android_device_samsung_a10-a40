# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/jackpotlte/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := jackpotlte
PRODUCT_NAME := full_jackpotlte
PRODUCT_MODEL := SM-A530F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
