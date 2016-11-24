make -f Makefile-armv7.iphone
make -f Makefile-armv7s.iphone
make -f Makefile-arm64.iphone
lipo -create libfreeimage-iphonesimulator-x86_64.a libfreeimage-iphonesimulator.a libfreeimage-iphone-armv7.a libfreeimage-iphone-armv7s.a libfreeimage-iphone-arm64.a -output libfreeimage-fat.a