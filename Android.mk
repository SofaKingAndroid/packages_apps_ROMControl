LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PROGUARD_FLAG_FILES := proguard.cfg

LOCAL_MODULE_TAGS := optional

LOCAL_STATIC_JAVA_LIBRARIES := android-support-v13 android-support-v4

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_PACKAGE_NAME := NocturnalTweaks
LOCAL_CERTIFICATE := platform
include $(BUILD_PACKAGE)
# Use the folloing include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
