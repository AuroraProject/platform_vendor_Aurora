#
# Copyright (C) 2019-2021 The ConquerOS Project
#           (C) 2021 hlcynprjct!
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

AURORA_HOST_TIME := $(shell date +"%Y%m%d-%H%M")

ifndef AURORA_BUILD_TYPE
   AURORA_BUILD_TYPE := UNOFFICIAL
endif

AURORA_VERSION := 1.0
ifeq ($(WITH_GMS),true)
     AURORA_BUILD_VERSION := aurora-$(AURORA_VERSION)-$(AURORA_BUILD)-$(AURORA_HOST_TIME)-$(AURORA_BUILD_TYPE)-gapps
     AURORA_BUILD_NUMBER := aurora-$(AURORA_VERSION).$(AURORA_HOST_TIME)-gapps
else
     AURORA_BUILD_VERSION := AURORA-$(AURORA_VERSION)-$(AURORA_BUILD)-$(AURORA_HOST_TIME)-$(AURORA_BUILD_TYPE)-vanilla
     AURORA_BUILD_NUMBER := aurora-$(AURORA_VERSION).$(AURORA_HOST_TIME)-vanilla
endif

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   ro.aurora.version=$(AURORA_VERSION) \
   ro.aurora.build.version=$(AURORA_BUILD_VERSION) \
   ro.aurora.build.number=$(AURORA_BUILD_NUMBER) \
   ro.aurora.build.type=$(AURORA_BUILD_TYPE)
