#
# Copyright (C) 2019 Potato Open Sauce Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := TECNO-CD6

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CD6
PRODUCT_NAME := omni_$(PRODUCT_DEVICE)
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CD6
PRODUCT_MANUFACTURER := TECNO MOBILE LIMITED

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31