# Copyright (C) 2016 SkyDragon
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

# Inherit AOSP device configuration for angler
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

# Inherit common product files.
$(call inherit-product, vendor/custom/configs/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := sd_marlin
PRODUCT_BRAND := Google
PRODUCT_DEVICE := marlin
PRODUCT_MODEL := Pixel XL
PRODUCT_MANUFACTURER := Google

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    BUILD_FINGERPRINT=google/marlin/marlin:7.1.1/NMF26V/3562348:user/release-keys \
    PRIVATE_BUILD_DESC="marlin-user 7.1.1 NMF26V 3562348 release-keys"

