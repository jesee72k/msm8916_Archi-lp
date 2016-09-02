@@ -67,17 +67,24 @@ $(combo_2nd_arch_prefix)TARGET_STRIP := $($(combo_2nd_arch_prefix)TARGET_TOOLS_P
  
  $(combo_2nd_arch_prefix)TARGET_NO_UNDEFINED_LDFLAGS := -Wl,--no-undefined
  
# ArchiDroid
	include $(BUILD_SYSTEM)/archidroid.mk

	$(combo_2nd_arch_prefix)TARGET_arm_CFLAGS :=    $(ARCHIDROID_GCC_CFLAGS_ARM) \
                          -fomit-frame-pointer \
                          -fstrict-aliasing    \
                          -funswitch-loops
  
  # Modules can choose to compile some source as thumb.
  $(combo_2nd_arch_prefix)TARGET_thumb_CFLAGS :=  -mthumb \
                       $(ARCHIDROID_GCC_CFLAGS_THUMB) \
                          -fomit-frame-pointer \
                          -fno-strict-aliasing
  
 $(combo_2nd_arch_prefix)TARGET_GLOBAL_CFLAGS += $(ARCHIDROID_GCC_CFLAGS)
 $(combo_2nd_arch_prefix)TARGET_GLOBAL_CPPFLAGS += $(ARCHIDROID_GCC_CPPFLAGS)
 $(combo_2nd_arch_prefix)TARGET_GLOBAL_LDFLAGS += $(ARCHIDROID_GCC_LDFLAGS)
 
  # Set FORCE_ARM_DEBUGGING to "true" in your buildspec.mk
  # or in your environment to force a full arm build, even for
  # files that are normally built as thumb; this can make
 @@ -114,7 +121,7 @@ $(combo_2nd_arch_prefix)TARGET_GLOBAL_CFLAGS += \
  # "-Wall -Werror" due to a commom idiom "ALOGV(mesg)" where ALOGV is turned
  # into no-op in some builds while mesg is defined earlier. So we explicitly
  # disable "-Wunused-but-set-variable" here.
	ifneq ($(filter 4.6 4.6.% 4.7 4.7.% 4.8 4.8.% 4.9 4.9.%, $($(combo_2nd_arch_prefix)TARGET_GCC_VERSION)),)
  $(combo_2nd_arch_prefix)TARGET_GLOBAL_CFLAGS += -fno-builtin-sin \
  			-fno-strict-volatile-bitfields
  endif
 @@ -145,7 +152,6 @@ $(combo_2nd_arch_prefix)TARGET_GLOBAL_CPPFLAGS += -fvisibility-inlines-hidden
  # More flags/options can be added here
  $(combo_2nd_arch_prefix)TARGET_RELEASE_CFLAGS := \
  			-DNDEBUG \
  			-Wstrict-aliasing=2 \
  			-fgcse-after-reload \
  			-frerun-cse-after-loop \
