LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

GLOBAL_C_INCLUDES := \
    $(LOCAL_PATH)/../Source \
    $(LOCAL_PATH)/../Source \
    $(LOCAL_PATH)/../Source/DeprecationManager \
    $(LOCAL_PATH)/../Source/FreeImage \
    $(LOCAL_PATH)/../Source/FreeImageLib \
    $(LOCAL_PATH)/../Source/FreeImageToolkit \
    $(LOCAL_PATH)/../Source/LibJPEG \
    $(LOCAL_PATH)/../Source/LibJXR \
    $(LOCAL_PATH)/../Source/LibJXR\common\include \
    $(LOCAL_PATH)/../Source/LibJXR\image\decode \
    $(LOCAL_PATH)/../Source/LibJXR\image\encode \
    $(LOCAL_PATH)/../Source/LibJXR\image\sys \
    $(LOCAL_PATH)/../Source/LibJXR\image\x86 \
    $(LOCAL_PATH)/../Source/LibJXR\jxrgluelib \
    $(LOCAL_PATH)/../Source/LibMNG \
    $(LOCAL_PATH)/../Source/LibOpenJPEG \
    $(LOCAL_PATH)/../Source/LibPNG \
    $(LOCAL_PATH)/../Source/LibRawLite \
    $(LOCAL_PATH)/../Source/LibRawLite/dcraw \
    $(LOCAL_PATH)/../Source/LibRawLite/internal \
    $(LOCAL_PATH)/../Source/LibRawLite/libraw \
    $(LOCAL_PATH)/../Source/LibRawLite/src \
    $(LOCAL_PATH)/../Source/LibTIFF \
    $(LOCAL_PATH)/../Source/Metadata \
    $(LOCAL_PATH)/../Source/OpenEXR \
    $(LOCAL_PATH)/../Source/OpenEXR/Copyrights \
    $(LOCAL_PATH)/../Source/OpenEXR/Half \
    $(LOCAL_PATH)/../Source/OpenEXR/Iex \
    $(LOCAL_PATH)/../Source/OpenEXR/IexMath \
    $(LOCAL_PATH)/../Source/OpenEXR/IlmImf \
    $(LOCAL_PATH)/../Source/OpenEXR/IlmThread \
    $(LOCAL_PATH)/../Source/OpenEXR/Imath \
    $(LOCAL_PATH)/../Source/ZLib \
    
FILE_LIST := $(wildcard $(LOCAL_PATH)/../Source/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/*.cc)    
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/DeprecationManager/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/DeprecationManager/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/DeprecationManager/*.cc)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/FreeImage/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/FreeImage/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/FreeImage/*.cc)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/FreeImageLib/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/FreeImageLib/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/FreeImageLib/*.cc)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/FreeImageToolkit/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/FreeImageToolkit/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/FreeImageToolkit/*.cc)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibJPEG/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibJPEG/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibJPEG/*.cc)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibJXR/*.cpp)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibJXR/*.c)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibJXR/*.cc)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibOpenJPEG/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibOpenJPEG/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibOpenJPEG/*.cc)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibPNG/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibPNG/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibPNG/*.cc)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/*.cpp)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/*.c)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/*.cc)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/*/*.cpp)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/*/*.c)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibRawLite/*/*.cc)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibTIFF4/*.cpp)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibTIFF4/*.c)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibTIFF4/*.cc)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibWebP/*.cpp)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibWebP/*.c)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibWebP/*.cc)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibWebP/src/*/*.cpp)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibWebP/src/*/*.c)
#FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/LibWebP/src/*/*.cc)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/Metadata/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/Metadata/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/Metadata/*.cc)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/OpenEXR/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/OpenEXR/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/OpenEXR/*.cc)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/OpenEXR/*/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/OpenEXR/*/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/OpenEXR/*/*.cc)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/ZLib/*.cpp)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/ZLib/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/../Source/ZLib/*.cc)

LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)

#LOCAL_C_INCLUDES := ../Source/OpenEXR/Imath

LOCAL_MODULE := FreeImage

GLOBAL_CFLAGS   := -O3 -DHAVE_CONFIG_H=1 -DFREEIMAGE_LIB -isystem $(SYSROOT)/usr/include/ 

ifeq ($(TARGET_ARCH),x86)
    LOCAL_CFLAGS   := $(GLOBAL_CFLAGS)
else
    LOCAL_CFLAGS   := -mfpu=vfp -mfloat-abi=softfp -fno-short-enums $(GLOBAL_CFLAGS)
endif

LOCAL_C_INCLUDES := $(GLOBAL_C_INCLUDES)

include $(BUILD_STATIC_LIBRARY)