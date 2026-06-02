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
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

BOARD_VENDOR := Infinix
PRODUCT_NAME := alpha_X6739
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

# Alpha Flags
TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_BLUR := true
TARGET_EXCLUDES_AUDIOFX := false
TARGET_FACE_UNLOCK_SUPPORTED := true
ALPHA_VERSION_APPEND_TIME_OF_DAY := false
ALPHA_MAINTAINER := RyXLab
TARGET_INCLUDE_MATLOG := false
TARGET_BUILD_PACKAGE := 3
TARGET_INCLUDE_GOOGLE_COMMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
