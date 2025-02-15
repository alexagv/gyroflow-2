$Env:Path += ";D:\Programy\Qt\6.2.3\msvc2019_64\bin"


$Env:Path += ";$PSScriptRoot\ext\ffmpeg-4.4-windows-desktop-clang-gpl-lite\bin"
$Env:FFMPEG_DIR = "$PSScriptRoot\ext\ffmpeg-4.4-windows-desktop-clang-gpl-lite"

$Env:OPENCV_LINK_LIBS = "opencv_core454,opencv_calib3d454,opencv_features2d454,opencv_imgproc454,opencv_video454,opencv_flann454,opencv_imgcodecs454"
$Env:OPENCV_LINK_PATHS = "$PSScriptRoot\ext\opencv-4.5.4\lib"
$Env:OPENCV_INCLUDE_PATHS = "$PSScriptRoot\ext\opencv-4.5.4\include"
$Env:Path += ";$PSScriptRoot\ext\opencv-4.5.4\bin"

$Env:LIBCLANG_PATH = "$PSScriptRoot\ext\llvm-13-win64\bin"
$Env:Path += ";$PSScriptRoot\ext\llvm-13-win64\bin"


# For OpenCV installed by official installer
#$Env:OPENCV_LINK_LIBS = "opencv_world453"
#$Env:OPENCV_LINK_PATHS = "$PSScriptRoot\ext\opencv\453\lib"
#$Env:OPENCV_INCLUDE_PATHS = "$PSScriptRoot\ext\opencv\453\include"
#$Env:Path += ";$PSScriptRoot\ext\opencv\453\bin"
