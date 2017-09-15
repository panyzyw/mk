LOCAL_PATH:= $(call my-dir)

#include $(CLEAR_VARS)
#LOCAL_MODULE := libmsc
#LOCAL_SRC_FILES_32 := libs/armeabi/libmsc.so
#LOCAL_MULTILIB := 32
#LOCAL_MODULE_CLASS := SHARED_LIBRARIES
#LOCAL_MODULE_SUFFIX := .so
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := YYDRobotVoiceNotification
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_ASSET_DIR := $(LOCAL_PATH)/assets

LOCAL_PROGUARD_ENABLED := disabled
LOCAL_DEX_PREOPT := false
LOCAL_STATIC_JAVA_LIBRARIES += \
	android-support-v4 \
	libnotification1 \
	libnotification2 

LOCAL_JNI_SHARED_LIBRARIES += libmsc	
LOCAL_MULTILIB := 32
include $(BUILD_PACKAGE)

include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
	libnotification1:libs/Msc.jar \
	libnotification2:libs/gson-2.2.4.jar
include $(BUILD_MULTI_PREBUILT)

