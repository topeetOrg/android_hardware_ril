# Copyright 2006 The Android Open Source Project

# XXX using libutils for simulator build only...
#
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    secril-client.cpp

#build executable
LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libbinder \
    libcutils \
    libhardware_legacy

    
LOCAL_CFLAGS += -DRIL_SHLIB
LOCAL_MODULE := libsecril-client
LOCAL_MODULE_TAGS := eng
LOCAL_PRELINK_MODULE:= false
LOCAL_LDLIBS += -lpthread
include $(BUILD_SHARED_LIBRARY)



