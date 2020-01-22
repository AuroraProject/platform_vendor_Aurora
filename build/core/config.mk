#     (C) 2019-2020 The LineageOS Project
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

# General entries for project pathmap.  Any entries listed here should
# be device and hardware independent.
$(call project-set-path-variant,ril,TARGET_RIL_VARIANT,hardware/ril)

# Include board/platform macros
include vendor/sosp/build/core/utils.mk

# Include vendor platform definitions
include vendor/sosp/build/core/vendor/*.mk

# Rules for QCOM targets
include $(TOPDIR)vendor/sosp/build/core/qcom_target.mk
