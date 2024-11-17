DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

TARGET_SOC := exynos7884B
TARGET_LOCAL_ARCH := arm64

# Inherit common device configuration
$(call inherit-product, device/samsung/universal7885-common/universal7885-common.mk)

$(call inherit-product, vendor/samsung/a20e/a20e-vendor.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb-service.samsung

TARGET_SCREEN_HEIGHT := 1560
TARGET_SCREEN_WIDTH := 720

# Fingerprint
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

PRODUCT_PACKAGES += \
   android.hardware.sensors@1.0-service

BUILD_FINGERPRINT := "samsung/a20ektt/a20e:11/RP1A.200720.012/A202KKKU8CUL3:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
   BuildDesc=$(call normalize-path-list,"a20ektt-user 11 RP1A.200720.012 A202KKKU8CUL3 release-keys")
