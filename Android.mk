LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),h1)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := TWL4030_Keypad.kcm
LOCAL_MODULE_TAGS := optional
include $(BUILD_KEY_CHAR_MAP)

endif

ifneq ($(TARGET_SIMULATOR),true)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
