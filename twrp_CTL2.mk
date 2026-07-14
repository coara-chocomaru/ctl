$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
PRODUCT_RELEASE_CONFIG_MAPS += device/benesse/ctl2/release/release_config_map.textproto
$(call inherit-product, device/benesse/ctl2/device.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := CTL2
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := Benesse
PRODUCT_MODEL := CTL2
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_RELEASE_NAME := CTL2
PRODUCT_PLATFORM := jupiter
PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_MANUFACTURER)
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a733_pro3_arm64-user 14 UP1A.231105.001.A1 20260414 release-keys"

BUILD_FINGERPRINT := Benesse/50S904/50S904:15/AP3A.241105.008/20260414:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=CTL2 \
    BUILD_PRODUCT=CTL2 \
    TARGET_DEVICE=CTL2

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)
