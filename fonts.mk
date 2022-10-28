PRODUCT_PACKAGES += \
    AUTHENTIC.ttf \
    TwCenMTCondensed.ttf \
		SulphurPoint-Bold.ttf \
    SulphurPoint-Light.ttf \
    SulphurPoint-Regular.ttf \
    Urbanist-VariableFont.ttf \
		nk57-monospace-cd-rg.ttf \
		HarmoniaSansCondensed.ttf

# Customization overlays
PRODUCT_PACKAGES += \
   fonts_customization.xml \
   FontAuthenticOverlay \
   FontTwCenMtOverlay \
	 FontSulphurPointOverlay \
	 FontUrbanistOverlay \
	 FontNK57Overlay \
	 FontHarmoniaSansOverlay

# Register fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/gt58wifi/fonts/prebuilt,$(TARGET_COPY_OUT_PRODUCT)/fonts) \
    device/samsung/gt58wifi/fonts/prebuilt/etc/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml
