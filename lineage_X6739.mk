#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from X6739 device
$(call inherit-product, device/infinix/X6739/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

BOARD_VENDOR := Infinix
PRODUCT_NAME := lineage_X6739
PRODUCT_DEVICE := X6739
PRODUCT_MANUFACTURER := INFINIX
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6739

PRODUCT_GMS_CLIENTID_BASE := android-transsion
PRODUCT_SYSTEM_NAME := X6739-GL
PRODUCT_SYSTEM_DEVICE := Infinix-X6739

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="vnd_x6739u_h931-user 12 SP1A.210812.016 820402 release-keys" \
    BuildFingerprint=Infinix/X6739-GL/Infinix-X6739:14/UP1A.231005.007/250610V824:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

# Axion Flags
TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_AXFX := true
AXION_CAMERA_REAR_INFO := 108,2,2
AXION_CAMERA_FRONT_INFO := 32
AXION_MAINTAINER := RyXLab
AXION_PROCESSOR := Mediatek_Dimensity_8050
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120