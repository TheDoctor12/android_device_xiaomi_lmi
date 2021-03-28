#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_SHIPPING_API_LEVEL := 29

# Audio configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_dynamic.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_overlay_dynamic.xml \
    $(LOCAL_PATH)/audio/mixer_paths_overlay_static.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_overlay_static.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml

# Camera
PRODUCT_PACKAGES += \
    vendor.xiaomi.hardware.motor@1.0.vendor

# Device parts
PRODUCT_PACKAGES += \
    DeviceParts

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/parts/popup_bababooey.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_bababooey.ogg \
    $(LOCAL_PATH)/parts/popup_bruh.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_bruh.ogg \
    $(LOCAL_PATH)/parts/popup_dababy.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_dababy.ogg \
    $(LOCAL_PATH)/parts/popup_skibidibopmmdada.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_skibidibopmmdada.ogg \
    $(LOCAL_PATH)/parts/popup_snapbacktoreality.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_snapbacktoreality.ogg \
    $(LOCAL_PATH)/parts/popup_tacobell.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_tacobell.ogg \
    $(LOCAL_PATH)/parts/popup_unknownlanguage.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_unknownlanguage.ogg \
    $(LOCAL_PATH)/parts/popup_xuehuapiaopiao.ogg:$(TARGET_COPY_OUT_SYSTEM)/media/audio/ui/popup_xuehuapiaopiao.ogg

# Display calibration data
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/display/qdcm_calib_data_xiaomi_j11_38_08_0a_fhd_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_xiaomi_j11_38_08_0a_fhd_panel.xml

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/lmi/lmi-vendor.mk)
