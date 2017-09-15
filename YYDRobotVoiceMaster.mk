LOCAL_PATH:= $(call my-dir)

#include $(CLEAR_VARS)
#LOCAL_MODULE := libmsc
#LOCAL_SRC_FILES_32 := libs/armeabi/libmsc.so
#LOCAL_MULTILIB := 32
#LOCAL_MODULE_CLASS := SHARED_LIBRARIES
#LOCAL_MODULE_SUFFIX := .so
#include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libamapv304ex
LOCAL_SRC_FILES_32 := libs/armeabi/libamapv304ex.so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libamapv304
LOCAL_SRC_FILES_32 := libs/armeabi/libamapv304.so
LOCAL_MULTILIB := 32
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_PACKAGE_NAME := YYDRobotVoiceMaster
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_ASSET_DIR := $(LOCAL_PATH)/assets 

LOCAL_PROGUARD_ENABLED := disabled

LOCAL_STATIC_JAVA_LIBRARIES += \
	android-support-v4 \
	libmaster1 \
	libmaster2 \
	libmaster3 \
	libmaster4 \
	libmaster5 \
	libmaster6 \
	libmaster7 \
	libmaster8 \
	libmaster9 \
	libmaster10 \
	libmaster11 \
	libmaster12 \
	libmaster13 \
	libmaster14 \
	libmaster15 \
	libmaster16 \
	libmaster17 \
	libmaster18 \
	libmaster19 \
	libmaster20
	
# import android.provider.Telephony;	
LOCAL_JAVA_LIBRARIES := telephony-common

LOCAL_JNI_SHARED_LIBRARIES += libmsc libamapv304ex libamapv304
LOCAL_MULTILIB := 32
include $(BUILD_PACKAGE)

include $(CLEAR_VARS)
LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
	libmaster1:libs/AMap_Location_v1.4.1_20150917.jar \
	libmaster2:libs/AMap_Navi_v1.4.0_20150916.jar \
	libmaster3:libs/AMap_Search_v2.6.0_20150914.jar \
	libmaster4:libs/Android_2DMapApi_V2.5.0.jar \
	libmaster5:libs/Android_Map_2.5.1.20150827.jar \
	libmaster6:libs/android-support-v4_z.jar \
	libmaster7:libs/commons-lang-2.6_z.jar \
	libmaster8:libs/easemobchat_2.2.2_z.jar \
	libmaster9:libs/gson-2.2.4.jar \
	libmaster10:libs/jsoup-1.8.3_z.jar \
	libmaster11:libs/MotorService.jar \
	libmaster12:libs/Msc_z.jar \
	libmaster13:libs/netty-3.5.10.Final_z.jar \
	libmaster14:libs/okhttp-2.4.0_z.jar \
	libmaster15:libs/okio-1.4.0_z.jar \
	libmaster16:libs/Sunflower_z.jar \
	libmaster17:libs/xUtils-2.6.14_z.jar \
	libmaster18:libs/YYDRobotDance.jar \
	libmaster19:libs/httpcore-4.4.4.jar \
	libmaster20:libs/org.apache.http.legacy.jar
include $(BUILD_MULTI_PREBUILT)

