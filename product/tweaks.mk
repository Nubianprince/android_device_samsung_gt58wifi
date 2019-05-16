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
