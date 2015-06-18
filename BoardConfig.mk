# inherit from the proprietary version

TARGET_NO_BOOTLOADER := true

TARGET_ARCH := arm64
TARGET_BOARD_PLATFORM := msm8994
TARGET_CPU_ABI := arm64-v8a
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOOTLOADER_BOARD_NAME := z2

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.hardware=z2
BOARD_KERNEL_BASE := 0x0
BOARD_KERNEL_PAGESIZE := 4096
BOARD_FORCE_RAMDISK_ADDRESS:=0x2000000
# BOARD_USES_QCOM_HARDWARE := true
BOARD_KERNEL_SEPARATED_DT := true
TARGET_PREBUILT_KERNEL := device/lge/z2/kernel
BOARD_MKBOOTIMG_ARGS := --dt device/lge/z2/dt.img --kernel_offset 0x8000 --ramdisk_offset 0x2000000 --tags_offset 0x100
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0xa000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x3fc000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x177a000000
BOARD_FLASH_BLOCK_SIZE := 262144

BOARD_HAS_NO_SELECT_BUTTON := true

-include vendor/lge/z2/BoardConfigVendor.mk

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true

# twrp
HAVE_SELINUX := true
DEVICE_RESOLUTION := 1080x1920
TARGET_RECOVERY_INITRC := /device/lge/z2/initrc/init.rc
# RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_NO_USB_STORAGE := true
TWRP_EVENT_LOGGING := true
