#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from r2p device
$(call inherit-product, device/realme/r2p/device.mk)

# Inherit some AwakenOS stuff
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Extras
AWAKEN_BUILD_TYPE := OFFICIAL
USE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_INCLUDE_STOCK_ARCORE := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := awaken_r2p
PRODUCT_DEVICE := r2p
PRODUCT_MANUFACTURER := OPPO
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := Realme 2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := r2p
TARGET_VENDOR_DEVICE_NAME := r2p

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="r2p" \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1.191014.001 eng.root.20201016.161857 release-keys"

BUILD_FINGERPRINT := "OPPO/RMX1801/RMX1801:10/QKQ1.191014.001/1602573502:user/release-keys"
