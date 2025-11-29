#!/bin/bash

export OF_DISABLE_OTA_MENU=1
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export OF_DEFAULT_KEYMASTER_VERSION=4.1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_MAINTAINER="ALBINsRAJ2025"
export FOX_VARIANT="A12+"
export OF_FLASHLIGHT_ENABLE=1
export OF_ENABLE_LPTOOLS=1
export FOX_DELETE_MAGISK_ADDON=0
export FOX_DELETE_AROMAFM=0
export FOX_ENABLE_APP_MANAGER=0
export OF_SUPPORT_VBMETA_AVB2_PATCHING=1
export FOX_USE_DATA_RECOVERY_FOR_SETTINGS=1
export OF_LOOP_DEVICE_ERRORS_TO_LOG=0
export FOX_DRASTIC_SIZE_REDUCTION=0
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export FOX_USE_BUSYBOX_BINARY=1
export FOX_USE_NANO_EDITOR=1
export OF_ENABLE_LPTOOLS=1
export OF_ENABLE_ALL_PARTITION_TOOLS=1
export FOX_ALLOW_EARLY_SETTINGS_LOAD=1
export FOX_MOVE_MAGISK_INSTALLER_TO_RAMDISK=1
export FOX_USE_FSCK_EROFS_BINARY=1

export OF_SCREEN_H=2400
export OF_STATUS_H=95
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=1

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_MAXSIZE="5G"
export CCACHE_DIR="~/ccache"

if [ ! -d ${CCACHE_DIR} ];
then
  echo "CCACHE Directory/Partition is not mounted at \"${CCACHE_DIR}\""
  echo "Please edit the CCACHE_DIR build variable or mount the directory."
fi

export LC_ALL="C"

# Clone to fix build on minimal manifest
git clone https://android.googlesource.com/platform/external/gflags/ -b android-12.1.0_r4 external/gflags
