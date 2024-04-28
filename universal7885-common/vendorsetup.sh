#!/bin/bash

echo 'Starting Cloning repos for exynos7885'
echo 'Cloning Kernel tree [1/6]'
# Kernel for exynos7885
rm -rf kernel/samsung/exynos7885
git clone https://github.com/eurekadevelopment/Eureka-Kernel-Exynos7885-Q-R-S.git -b R15_rom kernel/samsung/exynos7885


echo 'Cloning Device Tree [2/6]'
# Device tree for exynos7885
rm -rf device/samsung
git clone https://github.com/iamrh1819/android_device_samsung_exynos7885.git -b android-14 device/samsung

echo 'Cloning Vendor Trees [3/6]'
# Vendor blobs for exynos7885
rm -rf vendor/samsung
git clone https://github.com/iamrh1819/android_vendor_samsung_exynos7885.git -b android-14 vendor/samsung

echo 'Cloning Hardware Samsung [4/6]'
# Hardware OSS parts for Samsung
rm -rf hardware/samsung
git clone https://github.com/Roynas-Android-Playground/android_hardware_samsung.git -b fourteen hardware/samsung
git clone https://github.com/Roynas-Android-Playground/hardware_samsung-extra_interfaces.git -b lineage-21 hardware/samsung-ext/interfaces

echo 'Cloning Lineage-CP [5/6]'
# Lineage-CP
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_libbt.git -b lineage-21 hardware/samsung_slsi/libbt
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wifi_hal.git -b lineage-21 hardware/samsung_slsi/scsc_wifibt/wifi_hal
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_scsc_wifibt_wpa_supplicant_lib.git -b lineage-21 hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib

echo 'Cloning Samsung_Slsi and Linaro BSP repos [6/6]'
# SLSI Sepolicy
rm -rf device/samsung_slsi/sepolicy
git clone https://github.com/Roynas-Android-Playground/android_device_samsung_slsi_sepolicy.git -b lineage-21 device/samsung_slsi/sepolicy
# Linaro BSP
rm -rf hardware/samsung_slsi-linaro
git clone https://github.com/eurekadevelopment/android_hardware_samsung_slsi-linaro_graphics.git -b lineage-21 hardware/samsung_slsi-linaro/graphics
git clone https://github.com/eurekadevelopment/android_hardware_samsung_slsi-linaro_config.git -b lineage-21 hardware/samsung_slsi-linaro/config
git clone https://github.com/eurekadevelopment/android_hardware_samsung_slsi-linaro_exynos.git -b lineage-21 hardware/samsung_slsi-linaro/exynos
git clone https://github.com/eurekadevelopment/android_hardware_samsung_slsi-linaro_openmax.git -b lineage-21 hardware/samsung_slsi-linaro/openmax
git clone https://github.com/eurekadevelopment/android_hardware_samsung_slsi-linaro_interfaces.git -b lineage-21 hardware/samsung_slsi-linaro/interfaces

