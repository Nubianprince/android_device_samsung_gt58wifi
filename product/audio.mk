# Audio configuration file
AUDIO_CONFIG_PATH := hardware/qcom/audio-caf/msm8916/configs
PRODUCT_COPY_FILES += \
	$(AUDIO_CONFIG_PATH)/msm8916_32/audio_output_policy.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_output_policy.conf \
	$(AUDIO_CONFIG_PATH)/msm8916_32/audio_policy.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_policy.conf \
	$(AUDIO_CONFIG_PATH)/msm8916_32/audio_effects.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_effects.conf

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_platform_info.xml

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/mixer_paths.xml
	
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_effects.xml \
	$(AUDIO_CONFIG_PATH)/msm8916_32/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/a2dp_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_policy_volumes.xml \
	frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default_volume_tables.xml \
	frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/r_submix_audio_policy_configuration.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.sip.voip.xml \
	frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/usb_audio_policy_configuration.xml
	
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs.xml


PRODUCT_COPY_FILES += \
	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_google_audio.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_google_video.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_google_video_le.xml

	
# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.dsi.ant.antradio_library.xml

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-uart"
