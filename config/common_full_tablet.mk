# Inherit mobile full common Aurora stuff
$(call inherit-product, vendor/aurora/config/common_mobile_full.mk)

# Inherit tablet common Aurora stuff
$(call inherit-product, vendor/aurora/config/tablet.mk)

$(call inherit-product, vendor/aurora/config/telephony.mk)
