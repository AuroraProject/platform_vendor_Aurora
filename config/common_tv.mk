# Inherit some common aurora stuff.
$(call inherit-product, vendor/aurora/config/common.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME
