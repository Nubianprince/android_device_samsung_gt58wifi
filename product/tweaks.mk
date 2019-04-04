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
	net.tcp.buffersize.edge=4096,87380,256960,4096,163 84,256960

# DNS	
PRODUCT_PROPERTY_OVERRIDES += \
	net.rmnet0.dns1=8.8.8.8 \
	net.rmnet0.dns2=8.8.4.4 \
	net.dns1=8.8.8.8 \
	net.dns2=8.8.4.4

# Fast Reboot
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.purgeable_assets=1

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

# Wireless Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
net.ipv4.ip_no_pmtu_disc=0 \
net.ipv4.route.flush=1 \
net.ipv4.tcp_ecn=0 \
net.ipv4.tcp_fack=1 \
net.ipv4.tcp_mem=187000 187000 187000 \
net.ipv4.tcp_moderate_rcvbuf=1 \
net.ipv4.tcp_no_metrics_save=1 \
net.ipv4.tcp_rfc1337=1 \
net.ipv4.tcp_rmem=4096 39000 187000 \
net.ipv4.tcp_sack=1 \
net.ipv4.tcp_timestamps=1 \
net.ipv4.tcp_window_scaling=1 \
net.ipv4.tcp_wmem=4096 39000 18700 \
wifi.supplicant_scan_interval=180

#Test
PRODUCT_PROPERTY_OVERRIDES += \
persist.audio.dirac.speaker false
