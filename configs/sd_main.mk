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

LOCAL_PATH := $(call my-dir)

# Include UBER common configuration
include vendor/custom/configs/uber.mk

# Squisher Location
SQUISHER_SCRIPT := vendor/custom/tools/squisher

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/custom/overlay/common

# Custom Packages
PRODUCT_PACKAGES += \
    Busybox \
