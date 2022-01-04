# Copyright (C) 2019 The LineageOS Project

# Product launched with Oreo MR1.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from judyln device
$(call inherit-product, device/lge/judyln/device.mk)

# Device identifiers
PRODUCT_DEVICE := judyln
PRODUCT_NAME := lineage_judyln
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG G7 ThinQ
PRODUCT_MANUFACTURER := LG
PRODUCT_RELEASE_NAME := G7 ThinQ

PRODUCT_GMS_CLIENTID_BASE := android-om-lg

TARGET_VENDOR_PRODUCT_NAME := judyln_lao_com
TARGET_VENDOR_DEVICE_NAME := judyln

# Bootanimation resolution
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="judyln" \
    PRODUCT_DEVICE="judyln" \
    PRODUCT_NAME="judyln_lao_com" \
	PRIVATE_BUILD_DESC="judyln_lao_com-user 10 QKQ1.191222.002 8450100201101 release-keys"

BUILD_FINGERPRINT="lge/judyln_lao_com/judyln:10/QKQ1.191222.002/8450100201101:user/release-keys"

