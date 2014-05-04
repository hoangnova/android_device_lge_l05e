## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/l05e/l05e.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := l05e
PRODUCT_NAME := cm_l05e
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-l05e
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=L05E_dcm_jp-user BUILD_FINGERPRINT=lge/L05E_dcm_jp/L05E:4.2.2/JDQ39/L05E10d.1370547881:user/release-keys PRIVATE_BUILD_DESC="L05E_dcm_jp-user 4.2.2 JDQ39 L05E10d.1370547881 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
