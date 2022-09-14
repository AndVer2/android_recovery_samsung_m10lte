export OF_VANILLA_BUILD=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export OF_USE_TWRP_SAR_DETECT=1
export OF_FLASHLIGHT_ENABLE=0
export OF_QUICK_BACKUP_LIST="/boot;/data;/vendor_image;/system_image;"
export FOX_RECOVERY_INSTALL_PARTITION=/dev/block/platform/13500000.dwmmc0/by-name/recovery
export FOX_RECOVERY_SYSTEM_PARTITION=/dev/block/platform/13500000.dwmmc0/by-name/system
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1

. build/envsetup.sh
lunch omni_m10lte-eng
mka recoveryimage -j`nproc`
