#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rembrandt device
$(call inherit-product, device/xiaomi/rembrandt/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := rembrandt
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22122RK93C
PRODUCT_NAME := lineage_rembrandt

PRODUCT_SYSTEM_NAME := rembrandt
PRODUCT_SYSTEM_DEVICE := rembrandt

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rembrandt-user 14 SP1A.210812.016 V816.0.8.0.UMMCNXM release-keys" \
    BuildFingerprint=Redmi/rembrandt/rembrandt:12/SP1A.210812.016/V816.0.8.0.UMMCNXM:user/release-keys
