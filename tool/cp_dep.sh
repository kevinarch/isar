#!/bin/bash

version=`dart packages/isar/tool/get_version.dart`
github="https://github.com/isar/isar/releases/download/${version}"


cp -R libisar_android_arm64.so packages/isar_flutter_libs/android/src/main/jniLibs/arm64-v8a/libisar.so

cp -R isar_ios.xcframework.zip packages/isar_flutter_libs/ios/isar_ios.xcframework.zip
unzip -o packages/isar_flutter_libs/ios/isar_ios.xcframework.zip -d packages/isar_flutter_libs/ios
rm packages/isar_flutter_libs/ios/isar_ios.xcframework.zip