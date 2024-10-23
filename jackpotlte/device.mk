DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

TARGET_LOCAL_ARCH := arm64
TARGET_SOC := exynos7885
TARGET_TEE_KERNEL := mobicore

# Inherit common device configuration
$(call inherit-product, device/samsung/universal7885-common/universal7885-common.mk)

$(call inherit-product, vendor/samsung/jackpotlte/jackpotlte-vendor.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# device tree for boot image
PRODUCT_HOST_PACKAGES += \
    dtbhtoolExynos

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb-service.samsung

TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

# Init
PRODUCT_PACKAGES += \
    init.exynos7885.rc.jackpotlte

# Fingerprint
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Sensors
PRODUCT_PACKAGES += \
    android.frameworks.schedulerservice@1.0.vendor \
    android.frameworks.schedulerservice@1.0 \
    android.hardware.sensors@1.0-service \

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1.vendor

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0.vendor
    
# Camera
PRODUCT_PACKAGES += \
    android.frameworks.cameraservice.common@2.0.vendor \
    android.frameworks.cameraservice.device@2.0.vendor \
    android.frameworks.cameraservice.service@2.1.vendor \
    android.hardware.graphics.common-V4-ndk.vendor \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    android.hardware.camera.common@1.0 \
    android.hardware.camera.device@1.0 \
    android.hardware.camera.device@3.2 \
    android.hardware.camera.device@3.3 \
    android.hardware.camera.device@3.4 \
    android.hardware.camera.provider@2.4 \
    android.hardware.camera.provider@2.5:32 

# FlipFlap
PRODUCT_PACKAGES += \
    FlipFlap
    
# VNDK
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v30/arm64/arch-arm-armv8-a/shared/vndk-sp/libutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libutils-v30.so \
    prebuilts/vndk/v30/arm64/arch-arm64-armv8-a/shared/vndk-sp/libutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libutils-v30.so
    
# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-sec-vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec-vendor.conf

BUILD_FINGERPRINT := "samsung/jackpotltexx/jackpotlte:9/PPR1.180610.011/A530FXXS8CSK2:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRIVATE_BUILD_DESC="jackpotltexx-user 9 PPR1.180610.011 A530FXXS8CSK2 release-keys"
