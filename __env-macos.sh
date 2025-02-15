#!/bin/bash

PROJECT_DIR="/Users/Admin/gyroflow"

export FFMPEG_DIR=$PROJECT_DIR/ext/ffmpeg-x86_64
export OPENCV_LINK_PATHS=$PROJECT_DIR/ext/vcpkg/installed/x64-osx-release/lib
export OPENCV_INCLUDE_PATHS=$PROJECT_DIR/ext/vcpkg/installed/x64-osx-release/include/

export PATH="$PROJECT_DIR/ext/6.2.3/macos/bin:$PATH"
export OPENCV_LINK_LIBS="opencv_core,opencv_calib3d,opencv_features2d,opencv_imgproc,opencv_video,opencv_flann"

#export DYLD_FALLBACK_LIBRARY_PATH="$(xcode-select --print-path)/usr/lib/"
export DYLD_FALLBACK_LIBRARY_PATH="$(xcode-select --print-path)/Toolchains/XcodeDefault.xctoolchain/usr/lib/"
#export LD_LIBRARY_PATH="$PROJECT_DIR/ext/6.2.3/macos/lib"
export MACOSX_DEPLOYMENT_TARGET="10.11"
