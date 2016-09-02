 
	combo_var_prefix := $(combo_2nd_arch_prefix)$(combo_target)
   
	combo_var_prefix := $(combo_2nd_arch_prefix)$(combo_target)
  
# ArchiDroid
	include $(BUILD_SYSTEM)/archidroid.mk

# Set reasonable defaults for the various variables
  
  $(combo_var_prefix)CC := $(CC)
 @@ -50,7 +53,7 @@ $(combo_var_prefix)HAVE_STRLCAT := 0
  $(combo_var_prefix)HAVE_KERNEL_MODULES := 0
  
  $(combo_var_prefix)GLOBAL_CFLAGS := -fno-exceptions -Wno-multichar
  $(combo_var_prefix)RELEASE_CFLAGS := $(ARCHIDROID_GCC_CFLAGS_ARM) -fno-strict-aliasing
  $(combo_var_prefix)GLOBAL_CPPFLAGS :=
  $(combo_var_prefix)GLOBAL_LDFLAGS :=
  $(combo_var_prefix)GLOBAL_ARFLAGS := crsPD
# ArchiDroid
 include $(BUILD_SYSTEM)/archidroid.mk
 
  # Set reasonable defaults for the various variables
  
  $(combo_var_prefix)CC := $(CC)
 @@ -50,7 +53,7 @@ $(combo_var_prefix)HAVE_STRLCAT := 0
  $(combo_var_prefix)HAVE_KERNEL_MODULES := 0
  
  $(combo_var_prefix)GLOBAL_CFLAGS := -fno-exceptions -Wno-multichar
  $(combo_var_prefix)RELEASE_CFLAGS := $(ARCHIDROID_GCC_CFLAGS_ARM) -fno-strict-aliasing
  $(combo_var_prefix)GLOBAL_CPPFLAGS :=
  $(combo_var_prefix)GLOBAL_LDFLAGS :=
  $(combo_var_prefix)GLOBAL_ARFLAGS := crsPD
