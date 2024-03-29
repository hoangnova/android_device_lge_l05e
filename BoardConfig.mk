#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include device/lge/gproj-common/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := device/lge/l05e/include

BOARD_KERNEL_CMDLINE := vmalloc=600M console=ttyHSL0,115200,n8 lpj=67677 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 coresight-etm.boot_enable=0 androidboot.hardware=l05e

TARGET_KERNEL_CONFIG := cyanogenmod_l05e_defconfig

BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/lge/l05e/bluetooth/vnd_gk.txt

TARGET_BOOTLOADER_BOARD_NAME := l05e
TARGET_BOOTLOADER_NAME=l05e

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/l05e/bluetooth

BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4334
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)

BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_23x41.h\"
TARGET_RECOVERY_FSTAB = device/lge/l05e/fstab.l05e
ENABLE_LOKI_RECOVERY := true
BOARD_RECOVERY_SWIPE := true

COMMON_GLOBAL_CFLAGS += -DLG_CAMERA_HARDWARE

-include vendor/lge/l05e/BoardConfigVendor.mk

BOARD_SEPOLICY_DIRS += \
        device/lge/l05e/sepolicy

BOARD_SEPOLICY_UNION := \
        app.te \
        bluetooth.te \
        device.te \
        domain.te \
        drmserver.te \
        file.te \
        file_contexts \
        hci_init.te \
        init_shell.te \
        keystore.te \
        mediaserver.te \
        kickstart.te \
        nfc.te \
        rild.te \
        surfaceflinger.te \
        system.te \
        ueventd.te \
        wpa.te

TARGET_OTA_ASSERT_DEVICE := l05e

TARGET_RELEASETOOLS_EXTENSIONS := device/lge/gproj-common/loki

COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'
