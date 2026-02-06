#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/infinix/X663

# ==============================================================================
# A/B OTA
# ==============================================================================
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    gz \
    lk \
    logo \
    md1img \
    preloader \
    product \
    scp \
    spmfw \
    sspm \
    system \
    system_ext \
    tee \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor \
    vendor

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Virtual A/B
ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# ==============================================================================
# Partitions
# ==============================================================================
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# ==============================================================================
# VNDK / API
# ==============================================================================
PRODUCT_TARGET_VNDK_VERSION := 31
PRODUCT_SHIPPING_API_LEVEL := 30

# ==============================================================================
# Health HAL
# ==============================================================================
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Optional: only enable if your tree provides it as a valid module
# PRODUCT_PACKAGES += \
#     libhealthd.$(PRODUCT_PLATFORM)

# ==============================================================================
# Boot Control HAL (CRITICAL FIX)
# ==============================================================================
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-mtkimpl \
    android.hardware.boot@1.2-mtkimpl.recovery

# ADDED: Boot control debugging tools
PRODUCT_PACKAGES_DEBUG += \
    bootctl \
    bootctrl

# ==============================================================================
# Fastbootd
# ==============================================================================
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# ==============================================================================
# MTK plpath utils
# ==============================================================================
PRODUCT_PACKAGES += \
    mtk_plpath_utils.recovery

# ==============================================================================
# Update Engine (A/B)
# ==============================================================================
PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# ==============================================================================
# TWRP 12.x - Tools / Utilities (Recommended Baseline)
# ==============================================================================
# Core shell + utilities (predictable scripting environment)
PRODUCT_PACKAGES += \
    toybox \
    sh

# Dynamic partitions tooling (super / logical partitions)
PRODUCT_PACKAGES += \
    lptools

# Filesystem utilities (ext4 + f2fs) - essential for format/repair
PRODUCT_PACKAGES += \
    e2fsck \
    mke2fs \
    resize2fs \
    fsck.f2fs \
    mkfs.f2fs

# NTFS (you enable TW_INCLUDE_NTFS_3G := true in BoardConfig)
PRODUCT_PACKAGES += \
    ntfs-3g

# AVB inspection tool (debugging verified boot state)
PRODUCT_PACKAGES += \
    avbctl

# Debug helper (optional but very useful)
PRODUCT_PACKAGES += \
    strace

# ==============================================================================
# Properties / Patch-level spoof (vendor side)
# ==============================================================================
PRODUCT_PRODUCT_PROPERTIES += \
    ro.bootimage.build.date.utc=0 \
    ro.build.date.utc=0 \
    ro.vendor.build.security_patch=2099-12-31

# ==============================================================================
# OEM otacerts
# ==============================================================================
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(LOCAL_PATH)/security/infinix

# ==============================================================================
# Recovery modules (required in recovery ramdisk)
# ==============================================================================
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libkeymaster41

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster41.so

