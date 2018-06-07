ifneq ($(filter rolex, $(TARGET_DEVICE)),)
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.light@2.0-service.aw2013
LOCAL_INIT_RC := android.hardware.light@2.0-service.aw2013.rc
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := \
    service.cpp \
    Light.cpp

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libcutils \
    libhardware \
    libhidlbase \
    libhidltransport \
    libhwbinder \
    libutils \
    android.hardware.light@2.0

include $(BUILD_EXECUTABLE)

include $(call all-makefiles-under,$(LOCAL_PATH))
endif
