# inherit common device tree
-include device/oppo/msm8974-common/BoardConfigCommon.mk

LOCAL_PATH := device/oppo/onyx

BOARD_KERNEL_SEPARATED_DT := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := onyx
TARGET_OTA_ASSERT_DEVICE := onyx,ONYX

# Partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1388314624
BOARD_FLASH_BLOCK_SIZE := 131072

#kernel

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=onyx androidboot.selinux=permissive user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3

#dt.img
BOARD_MKBOOTIMG_ARGS := --dt $(LOCAL_PATH)/dt.img

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

#Libinit - handle US, EU and CN
TARGET_INIT_VENDOR_LIB := libinit_onyx

# Recovery:Start

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/configs/fstab.onyx
RECOVERY_SDCARD_ON_DATA := true
