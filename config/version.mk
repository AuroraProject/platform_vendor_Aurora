PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 0

ifeq ($(AURORA_VERSION_APPEND_TIME_OF_DAY),true)
    AURORA_BUILD_DATE := $(shell date -u +%Y%m%d_%H%M%S)
else
    AURORA_BUILD_DATE := $(shell date -u +%Y%m%d)
endif

# Filter out random types, so it'll reset to UNOFFICIAL
ifeq ($(filter OFFICIAL,$(AURORA_BUILDTYPE)),)
    AURORA_BUILDTYPE := UNOFFICIAL
    AURORA_EXTRAVERSION :=
endif

AURORA_VERSION_SUFFIX := $(AURORA_BUILD_DATE)-$(AURORA_BUILD_TYPE)-$(AURORA_BUILD)

# Internal version
AURORA_VERSION := $(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(AURORA_VERSION_SUFFIX)

# Display version
AURORA_DISPLAY_VERSION := $(PRODUCT_VERSION_MAJOR)-$(AURORA_VERSION_SUFFIX)
