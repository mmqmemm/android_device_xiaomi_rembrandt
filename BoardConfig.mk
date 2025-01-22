#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/rembrandt

# Inherit from mt6895-common
include device/xiaomi/mt6895-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 560

# Fastboot package
BOARD_BOOTLOADER_IN_UPDATE_PACKAGE := true
BOARD_SUPER_IMAGE_IN_UPDATE_PACKAGE := true

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_rembrandt
TARGET_RECOVERY_DEVICE_MODULES := libinit_rembrandt

# Kernel
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules/modules.load))
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules/modules.load.recovery))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules/modules.load.vendor_boot))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD) $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD)

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Security Patch Level
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# Inherit the proprietary files
include vendor/xiaomi/rembrandt/BoardConfigVendor.mk

# Inherit from proprietary files for miuicamera
-include vendor/xiaomi/miuicamera-rembrandt/BoardConfig.mk
