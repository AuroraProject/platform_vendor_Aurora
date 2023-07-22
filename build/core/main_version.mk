# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Aurora System Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.modversion=$(AURORA_VERSION) \

# Aurora Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.aurora.display.version=$(AURORA_DISPLAY_VERSION)

# Aurora Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.aurora.build.version.plat.sdk=$(AURORA_PLATFORM_SDK_VERSION)

# Aurora Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.aurora.build.version.plat.rev=$(AURORA_PLATFORM_REV)
