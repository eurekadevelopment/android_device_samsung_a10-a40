DEVICE_PATH := device/samsung/a30

# Asserts
TARGET_OTA_ASSERT_DEVICE := a30|a30dd

# Kernel
TARGET_KERNEL_CONFIG := exynos7885-a30_enforcing_defconfig

# Display
TARGET_SCREEN_DENSITY := 420

# Partitions# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 55574528
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5033164800
BOARD_CACHEIMAGE_PARTITION_SIZE := 157286400
BOARD_VENDORIMAGE_PARTITION_SIZE   := 452984832

# Inherit common board flags
include device/samsung/universal7885-common/BoardConfigCommon.mk
