APP_OPTIM := release
APP_PLATFORM := android-8
APP_STL := gnustl_static
APP_CPPFLAGS += -frtti 
APP_CPPFLAGS += -fexceptions
APP_CPPFLAGS += -DANDROID
APP_CFLAGS += -Wno-error=format-security
APP_ABI := armeabi armeabi-v7a x86
APP_MODULES := FreeImage