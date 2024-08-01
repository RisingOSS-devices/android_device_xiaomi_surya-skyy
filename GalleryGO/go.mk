LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
include device/xiaomi/surya/GalleryGO/prebuilts/prebuilts.mk
RELAX_USES_LIBRARY_CHECK=true