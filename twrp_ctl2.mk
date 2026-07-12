#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, device/benesse/ctl2/device.mk)

PRODUCT_DEVICE := ctl2
PRODUCT_NAME := twrp_ctl2
PRODUCT_BRAND := Benesse
PRODUCT_MODEL := 50S904
PRODUCT_MANUFACTURER := Benesse
PRODUCT_RELEASE_NAME := 50S904_CTL2
PRODUCT_GMS_CLIENTID_BASE := android-benesse

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a733_pro3_arm64-user 14 UP1A.231105.001.A1 20260414 release-keys"

BUILD_FINGERPRINT := Benesse/50S904/50S904:15/AP3A.241105.008/20260414:user/release-keys
