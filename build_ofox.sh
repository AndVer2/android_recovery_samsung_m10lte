FDEVICE="m10lte"

# j6lte specific
export TARGET_DEVICE_ALT="m10lte, m10f, m10ltexx, m10ltedx"

# R11
export FOX_R11="1"
export FOX_BUILD_TYPE="Stable"
export FOX_VERSION="R11.1"
export FOX_ADVANCED_SECURITY="1"
export OF_USE_TWRP_SAR_DETECT="1"
export OF_DISABLE_MIUI_OTA_BY_DEFAULT="1"
export OF_QUICK_BACKUP_LIST="/boot;/data;/system_image;/vendor_image;"

# Common
export TARGET_ARCH="arm64"
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/platform/13540000.dwmmc0/by-name/SYSTEM"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/platform/13540000.dwmmc0/by-name/VENDOR"

export FOX_ASH_IS_BASH="1"
export FOX_REPLACE_BUSYBOX_PS="1"
export FOX_USE_BASH_SHELL="1"
export FOX_USE_LZMA_COMPRESSION="1"
export FOX_USE_NANO_EDITOR="1"
export FOX_USE_TAR_BINARY="1"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
export FOX_USE_ZIP_BINARY="1"
export LZMA_RAMDISK_TARGETS="recovery"
export OF_AB_DEVICE="0"
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
export OF_FLASHLIGHT_ENABLE="0"
export OF_KEEP_FORCED_ENCRYPTION="1"
export OF_MAINTAINER="youssefnone"
export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
export OF_SCREEN_H="1520"
export OF_SKIP_MULTIUSER_FOLDERS_BACKUP="1"
export OF_TWRP_COMPATIBILITY_MODE="1"
export OF_USE_MAGISKBOOT="1"
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
export OF_USE_NEW_MAGISKBOOT="1"
export PLATFORM_SECURITY_PATCH="2099-12-31"
export PLATFORM_VERSION="16.1.0"
export TW_DEFAULT_LANGUAGE="en"

# use system (ROM) fingerprint where available
export OF_USE_SYSTEM_FINGERPRINT="1"

. build/envsetup.sh
lunch omni_m10lte-eng
mka recoveryimage -j`nproc`
