# Inherit common mobile aurora stuff
$(call inherit-product, vendor/aurora/config/common.mk)

# Include AOSP audio files
include vendor/aurora/config/aosp_audio.mk

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

