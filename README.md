freeimage_android
=================

Compile FreeImage Library for Android

Check the patch file for necessary changes to get the library compiled. Changes are worked in into the current code.
Enter the directory and run ndk-build to build the library.

Latest branch: develop
Latest FreeImage version: 3.17.0

run `ndk-build` from cygwin in this directory

* note for wrong color:
previous version of FreeImage is hard linked to BIG ENDIAN
FreeImage 3.17.0 makes it specifyable in FreeImage.h but defaulted to LITTLE ENDIAN when none is specified
#define FREEIMAGE_BIGENDIAN to solve the problem
see: https://sourceforge.net/p/freeimage/patches/97/

references:
http://stackoverflow.com/a/11718793/474330

https://sourceforge.net/p/freeimage/patches/97/