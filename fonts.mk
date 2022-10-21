PRODUCT_PACKAGES += \
    AUTHENTIC.ttf \
    TwCenMTCondensed.ttf \
		SulphurPoint-Bold.ttf \
    SulphurPoint-Light.ttf \
    SulphurPoint-Regular.ttf \
    Urbanist-VariableFont.ttf \
		nk57-monospace-cd-rg.ttf

# Customization overlays
PRODUCT_PACKAGES += \
   FontAuthenticOverlay \
   FontTwCenMtOverlay \
	 FontSulphurPointOverlay \
	 FontUrbanistOverlay \
	 FontNK57Overlay

# Register fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/gt58wifi/fonts/prebuilt,$(TARGET_COPY_OUT_PRODUCT)/fonts) \
    device/samsung/gt58wifi/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml
