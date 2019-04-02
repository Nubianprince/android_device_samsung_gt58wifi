LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),gt58wifi)

	include $(call all-makefiles-under,$(LOCAL_PATH))

	include $(CLEAR_VARS)

# Kiwi
KIWI_IMAGES := \
    kiwi.b00 kiwi.b01 kiwi.b02 kiwi.b03 kiwi.mdt

KIWI_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(KIWI_IMAGES)))
$(KIWI_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "KIWI firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(KIWI_SYMLINKS)

# Create links for audcal data files
$(shell mkdir -p $(TARGET_OUT_ETC)/firmware/wcd9306; \
    ln -sf /data/misc/audio/wcd9320_anc.bin \
    $(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_anc.bin; \
    ln -sf /data/misc/audio/mbhc.bin \
    $(TARGET_OUT_ETC)/firmware/wcd9306/wcd9306_mbhc.bin)



RFS_MSM_ADSP_SYMLINKS := $(TARGET_OUT)/rfs/msm/adsp/
$(RFS_MSM_ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MSM ADSP folder structure: $@"
	@rm -rf $@
	@mkdir -p $(dir $@)/readonly
	$(hide) ln -sf /data/tombstones/lpass $@/ramdumps
	$(hide) ln -sf /persist/rfs/msm/adsp $@/readwrite
	$(hide) ln -sf /persist/rfs/shared $@/shared
	$(hide) ln -sf /persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /firmware $@/readonly/firmware

RFS_MSM_MPSS_SYMLINKS := $(TARGET_OUT)/rfs/msm/mpss/
$(RFS_MSM_MPSS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating RFS MSM MPSS folder structure: $@"
	@rm -rf $@
	@mkdir -p $(dir $@)/readonly
	$(hide) ln -sf /data/tombstones/modem $@/ramdumps
	$(hide) ln -sf /persist/rfs/msm/mpss $@/readwrite
	$(hide) ln -sf /persist/rfs/shared $@/shared
	$(hide) ln -sf /persist/hlos_rfs/shared $@/hlos
	$(hide) ln -sf /firmware $@/readonly/firmware

ALL_DEFAULT_INSTALLED_MODULES += $(RFS_MSM_ADSP_SYMLINKS) $(RFS_MSM_MPSS_SYMLINKS)

endif
