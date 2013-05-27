-include vendor/huawei/u8650/BoardConfigVendor.mk
-include device/huawei/msm7x27-common/BoardConfigCommon.mk

# Kernel                                                                                                                                                                           
TARGET_KERNEL_CONFIG := u8650_defconfig                                                                                                                                            
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3                                                                                                                                   
#FULL_KERNEL_BUILD := false                                                                                                                                                        
BOARD_KERNEL_BASE := 0x10200000                                                                                                                                                    
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei                                                                                                                
BOARD_KERNEL_PAGESIZE := 2048  

TARGET_BOOTLOADER_BOARD_NAME := u8650
TARGET_OTA_ASSERT_DEVICE := u8650,U8650,Sonic,sonic

USE_CAMERA_STUB := false

# Enable ICS-backwards compatibility    
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
# Disable PIE since it breaks ICS camera blobs
TARGET_DISABLE_ARM_PIE := true

COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED
BOARD_HAVE_QCOM_FM := true
