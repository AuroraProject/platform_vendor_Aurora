# Set Aurora specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common Aurora stuff
$(call inherit-product, vendor/aurora/config/common_mini_phone.mk)
