#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common DERP stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from oxygen device
$(call inherit-product, device/xiaomi/oxygen/device.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := oxygen
PRODUCT_NAME := arrow_oxygen
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI MAX 2
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="oxygen-user 7.1.1 NMF26F V11.0.2.0.NDDMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/oxygen/oxygen:7.1.1/NMF26F/V11.0.2.0.NDDMIXM:user/release-keys"

# Fix "soong_namespace": namespace vendor/qcom/opensource/display does not exist / https://review.arrowos.net/c/ArrowOS/android_vendor_arrow/+/20740/1/config/BoardConfigQcom.mk#122
TARGET_USE_DISPLAY_VENDOR_FREEZER := false