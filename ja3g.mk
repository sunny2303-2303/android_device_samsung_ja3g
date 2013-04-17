#
# Copyright (C) 2012 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/ja3g

# This device is xxhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xxhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.universal5410:root/fstab.universal5410 \
    $(LOCAL_PATH)/init.universal5410.rc:root/init.universal5410

# NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=pdp0,wlan0,gprs,ppp0 \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10

$(call inherit-product-if-exists, vendor/samsung/ja3g/ja3g-vendor.mk)
