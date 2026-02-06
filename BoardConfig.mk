#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# ==============================================================================
# Device
# ==============================================================================
DEVICE_PATH := device/infinix/X663

# ==============================================================================
# Recovery SELinux overlay
# ==============================================================================
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# ==============================================================================
# Build / Minimal-manifest Compatibility
# ==============================================================================
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# ==============================================================================
# Target Architecture (Primary + Secondary)
# ==============================================================================
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

TARGET_BOARD_SUFFIX := _64
TARGET_SUPPORTS_64_BIT_APPS := true

# ==============================================================================
# Identity / Assert
# ==============================================================================
TARGET_OTA_ASSERT_DEVICE := Infinix-X663,X663

# ==============================================================================
# Bootloader
# ==============================================================================
TARGET_BOOTLOADER_BOARD_NAME := Infinix-X663
TARGET_NO_BOOTLOADER := true

# ==============================================================================
# Platform
# ==============================================================================
TARGET_BOARD_PLATFORM := mt6768
PRODUCT_PLATFORM := mt6768

# ==============================================================================
# A/B OTA
# ==============================================================================
AB_OTA_UPDATER := true

# ==============================================================================
# Kernel / Boot Image (prebuilt)
# ==============================================================================
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img

BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000

BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# ==============================================================================
# AVB / Verified Boot
# ==============================================================================
BOARD_AVB_ENABLE := true

# vbmeta_system
BOARD_AVB_VBMETA_SYSTEM := system system_ext
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# vbmeta_vendor
BOARD_AVB_VBMETA_VENDOR := vendor product
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 2

# recovery signing
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 3

BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# ==============================================================================
# Dynamic Partitions / Super
# ==============================================================================
BOARD_SUPER_PARTITION_SIZE := 7755374592
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_SIZE := 7753277440 # (BOARD_SUPER_PARTITION_SIZE - 4MB)

BOARD_MAIN_PARTITION_LIST := \
    system \
    system_ext \
    vendor \
    product

# ==============================================================================
# Partitions / Images / Filesystems
# ==============================================================================
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_USES_METADATA_PARTITION := true
BOARD_USES_PRODUCTIMAGE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

# ==============================================================================
# System-as-root / Erase Behavior
# ==============================================================================
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_SUPPRESS_SECURE_ERASE := true

# ==============================================================================
# Copy-out Mount Points (ramdisk staging paths)
# ==============================================================================
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext

# ==============================================================================
# Properties
# ==============================================================================
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# ==============================================================================
# Security Patch / Platform Version (decryption workaround)
# ==============================================================================
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

PLATFORM_VERSION := 16.1.0
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# ==============================================================================
# Recovery / TWRP Core
# ==============================================================================
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TW_HAS_NO_RECOVERY_PARTITION := true

TW_NO_FASTBOOT_BOOT := true
TW_INCLUDE_FASTBOOTD := true
TW_INCLUDE_INJECTTWRP := false

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# ==============================================================================
# MediaTek (MTK)
# ==============================================================================
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# ==============================================================================
# Crypto / FBE
# ==============================================================================
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_ROOT_EXTRA_FOLDERS += metadata

# ==============================================================================
# TWRP UI / Storage
# ==============================================================================
TW_THEME := portrait_hdpi

RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_USES_MKE2FS := true

# Brightness
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 180
TW_MAX_BRIGHTNESS := 255

# ==============================================================================
# TWRP Feature Flags (keep recovery small)
# ==============================================================================
# Excludes
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_APEX := true
TW_EXCLUDE_BASH := true
TW_EXCLUDE_NANO := true
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_PYTHON := true

# Includes
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LPTOOLS := true
TW_USE_TOOLBOX := true
TW_INCLUDE_NTFS_3G := true

# ==============================================================================
# Runtime Tweaks
# ==============================================================================
TW_FRAMERATE := 60
TW_HAS_MTP := true
TW_NO_FLASH_CURRENT_TWRP := true
TW_SCREEN_BLANK_ON_BOOT := true

# ==============================================================================
# Version / Debug
# ==============================================================================
TW_DEVICE_VERSION := by ALBINsRAJ2025

TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

