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

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent
    
# SkyDragon property overides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=20 \
    windowsmgr.max_events_per_sec=150 \
    debug.performance.tuning=1 \
    ro.ril.power_collapse=1 \
    persist.service.lgospd.enable=0 \
    persist.service.pcsync.enable=0 \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    ro.substratum.verified=true

# Google Assistant
 PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/custom/overlay/common

# APN
PRODUCT_COPY_FILES += \
    vendor/custom/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Proprietary latinime lib needed for swyping
PRODUCT_COPY_FILES += \
    vendor/custom/prebuilt/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# Camera Effects
ifneq ($(filter sd_flounder sd_hammerhead sd_shamu,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES +=  \
    vendor/custom/prebuilt/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/custom/prebuilt/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd
endif

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/custom/prebuilt/bin/sysinit:system/bin/sysinit

PRODUCT_COPY_FILES += \
    vendor/custom/prebuilt/etc/init.sd.rc:root/init.sd.rc
    vendor/custom/prebuilt/etc/skydragon.conf:system/etc/skydragon.conf
    vendor/custom/prebuilt/etc/99SKYD:system/etc/init.d/99SKYD

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/custom/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/custom/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/custom/prebuilt/bin/50-base.sh:system/addon.d/50-base.sh \

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/custom/prebuilt/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip 

# Security Enhanced Linux
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.build.selinux=1

# Custom Packages
PRODUCT_PACKAGES += \
    Busybox \
    masquerade \
    QuickSearchBox \
    GoogleWebView
    
# Telephony packages
PRODUCT_PACKAGES += \
    Stk \
    CellBroadcastReceiver 

# Squisher Location
SQUISHER_SCRIPT := vendor/custom/tools/squisher

# Boot Animation
ifneq ($(filter sd_angler,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/custom/prebuilt/bootanimation/angler.zip:system/media/bootanimation.zip
endif
ifneq ($(filter sd_bullhead,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/custom/prebuilt/bootanimation/bullhead.zip:system/media/bootanimation.zip
endif
ifneq ($(filter sd_marlin,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/custom/prebuilt/bootanimation/marlin.zip:system/media/bootanimation.zip
endif
ifneq ($(filter sd_sailfish,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/custom/prebuilt/bootanimation/sailfish.zip:system/media/bootanimation.zip
endif
ifneq ($(filter sd_shamu,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/custom/prebuilt/bootanimation/shamu.zip:system/media/bootanimation.zip
endif
