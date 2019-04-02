# Device specific properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=0 \
	ro.carrier=wifi-only \
	ro.radio.noril=1 \
	ro.config.low_ram=false \
	ro.config.zram=false \
	ro.sf.lcd_density=160 \
	telephony.lteOnCdmaDevice=0

# Better Internet Speed
PRODUCT_PROPERTY_OVERRIDES += \
	net.tcp.buffersize.default=4096,87380,256960,4096, 16384,256960 \
	net.tcp.buffersize.wifi=4096,87380,256960,4096,163 84,256960 \
	net.tcp.buffersize.umts=4096,87380,256960,4096,163 84,256960 \
	net.tcp.buffersize.gprs=4096,87380,256960,4096,163 84,256960 \
	net.tcp.buffersize.edge=4096,87380,256960,4096,163 84,256960 \
	net.rmnet0.dns1=8.8.8.8 \
	net.rmnet0.dns2=8.8.4.4 \
	net.dns1=8.8.8.8 \
	net.dns2=8.8.4.4

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true

# Quick Power On
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.hw_quickpoweron=true
