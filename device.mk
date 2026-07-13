LOCAL_PATH := device/benesse/CTL2


# API
PRODUCT_SHIPPING_API_LEVEL := 34
PRODUCT_TARGET_VNDK_VERSION := 34
PRODUCT_EXTRA_VNDK_VERSIONS := 34
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_TREBLE_LINKER_NAMESPACES := true
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_ENFORCE_VINTF_MANIFEST := true

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Virtual A/B
ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    vendor_boot \
    dtbo \
    system \
    system_dlkm \
    product \
    vendor \
    vendor_dlkm \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor

# Update engine
PRODUCT_PACKAGES += \
    checkpoint_gc \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-service \
    android.hardware.boot@1.2-impl.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctrl

PRODUCT_PACKAGES += \
    bootctrl \
    bootctrl.default \
    bootctrl.recovery

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Fastbootd
PRODUCT_PACKAGES += \
    libgptutils \
    libz \
    libcutils \
    fastbootd \
    lpdump \
    lpunpack \
    lpmake \
    android.hardware.fastboot@1.0-impl-mock

TARGET_RECOVERY_DEVICE_MODULES += \
    libion \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.0-impl.recovery \
    android.hardware.boot@1.2-service \
    android.hardware.boot@1.0 \
    android.hardware.boot@1.1 \
    android.hardware.boot@1.2 \

RECOVERY_LIBRARY_SOURCE_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libion.so

RECOVERY_BINARY_SOURCE_FILES += \
    $(TARGET_OUT_EXECUTABLES)/android.hardware.boot@1.0-service \
    $(TARGET_OUT_EXECUTABLES)/android.hardware.boot@1.2-service

PRODUCT_PROPERTY_OVERRIDES += ro.twrp.vendor_boot=true

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
