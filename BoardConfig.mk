#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from oneplus sm8250-common
-include device/oneplus/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/instantnoodlep

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 560

# Fingerprint
SOONG_CONFIG_ONEPLUS_KONA_FOD_POS_X = 604
SOONG_CONFIG_ONEPLUS_KONA_FOD_POS_Y = 2434
SOONG_CONFIG_ONEPLUS_KONA_FOD_SIZE = 232

# Vendor init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_instantnoodlep
TARGET_RECOVERY_DEVICE_MODULES := libinit_instantnoodlep

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# inherit from the proprietary version
-include vendor/oneplus/instantnoodlep/BoardConfigVendor.mk
