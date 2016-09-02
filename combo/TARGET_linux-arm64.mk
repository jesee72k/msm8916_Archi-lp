 
  TARGET_GLOBAL_CPPFLAGS += -fvisibility-inlines-hidden
  
# ArchiDroid
	include $(BUILD_SYSTEM)/archidroid.mk
 
 $(combo_2nd_arch_prefix)TARGET_GLOBAL_CFLAGS += $(ARCHIDROID_GCC_CFLAGS)
 $(combo_2nd_arch_prefix)TARGET_GLOBAL_CPPFLAGS += $(ARCHIDROID_GCC_CPPFLAGS)
 $(combo_2nd_arch_prefix)TARGET_GLOBAL_LDFLAGS += $(ARCHIDROID_GCC_LDFLAGS)
 
  # More flags/options can be added here
  TARGET_RELEASE_CFLAGS := \
  			-DNDEBUG \
 			$(ARCHIDROID_GCC_CFLAGS_ARM) \
  			-Wstrict-aliasing=2 \
  			-fgcse-after-reload \
  			-frerun-cse-after-loop \
