# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/m30lte/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m30lte
PRODUCT_NAME := full_m30lte
PRODUCT_MODEL := SM-M305F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := "samsung/m30ltedd/m30lte:10/QP1A.190711.020/M305FDDS7CTL2:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=m30ltedd \
        PRIVATE_BUILD_DESC="m30ltedd-user 10 QP1A.190711.020 M305FDDS7CTL2 release-keys"
