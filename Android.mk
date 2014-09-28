ifeq ($(WITH_QC_PERF),true)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libqc-sqlite
LOCAL_MODULE_OWNER         := qcom
LOCAL_MODULE_TAGS := optional debug
LOCAL_MODULE_CLASS  := STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX := .a
LOCAL_SRC_FILES := libqc-sqlite.a

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := libqc-skia
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := libqc-skia.a

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libqc-dalvik
LOCAL_MODULE_OWNER         := qcom
LOCAL_MODULE_TAGS := optional debug
LOCAL_MODULE_CLASS  := STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX := .a
LOCAL_SRC_FILES := libqc-dalvik.a
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE := libqc-opt
LOCAL_MODULE_OWNER  := qcom
LOCAL_MODULE_TAGS := optional debug
LOCAL_MODULE_CLASS  := STATIC_LIBRARIES
LOCAL_MODULE_SUFFIX := .a
LOCAL_SRC_FILES := libqc-opt.so
LOCAL_MODULE_PATH   := $(PRODUCT_OUT)/obj/STATIC_LIBRARIES

include $(BUILD_PREBUILT)

endif
