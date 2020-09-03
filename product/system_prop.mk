# Device specific properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=0 \
	ro.carrier=wifi-only \
	ro.radio.noril=1 \
	ro.config.low_ram=false \
	ro.config.zram=false \
	ro.sf.lcd_density=160 \
	ro.opengles.version=196608 \
	telephony.lteOnCdmaDevice=0

#enable voice path for PCM VoIP by default	
PRODUCT_PROPERTY_OVERRIDES += \
	use.voice.path.for.pcm.voip=true
