# CABL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=0 \
	ro.adb.secure=0

# Disable RIL
PRODUCT_PROPERTY_OVERRIDES += \
	ro.carrier=wifi-only \
	ro.radio.noril=1

# RAM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.low_ram=false \
	ro.config.zram=false

# Screen
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=160

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=0
	
persist.service.adb.enable=1                                                    
persist.service.debuggable=1
persist.sys.usb.config=mtp,adb
