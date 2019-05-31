# Device specific properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=0 \
	ro.carrier=wifi-only \
	ro.radio.noril=1 \
	ro.config.low_ram=false \
	ro.config.zram=false \
	ro.sf.lcd_density=160 \
	telephony.lteOnCdmaDevice=0


# Faster Scrolling
PRODUCT_PROPERTY_OVERRIDES += \
	ro.max.fling_velocity=12000 \
	ro.min.fling_velocity=8000 \
	windowsmgr.max_events_per_sec=150 \
	ro.min_pointer_dur=8

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
        ro.vendor.qti.sys.fw.bservice_enable=true

# Quick Power On
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.hw_quickpoweron=true

# HWUI_BUILD_PROPERTIES
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hwui.texture_cache_size=24 \
	ro.hwui.layer_cache_size=16 \
	ro.hwui.path_cache_size=4 \
	ro.hwui.texture_cache_flushrate=0.4 \
	ro.hwui.shape_cache_size=2 \
	ro.hwui.gradient_cache_size=2 \
	ro.hwui.drop_shadow_cache_size=2 \
	ro.hwui.r_buffer_cache_size=2 \
	ro.hwui.text_small_cache_width=1024 \
	ro.hwui.text_small_cache_height=512 \
	ro.hwui.text_large_cache_width=2048 \
	ro.hwui.text_large_cache_height=1024

#enable voice path for PCM VoIP by default	
PRODUCT_PROPERTY_OVERRIDES += \
	use.voice.path.for.pcm.voip=true