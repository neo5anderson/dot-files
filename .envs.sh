# ******************************* 
# [Scripts]
export SCRIPTS=~/Scripts
export SCRIPT_PATH=$SCRIPTS/go/bin:$SCRIPTS/py:$SCRIPTS/sh:$SCRIPTS/rb

# ******************************* 
# [Go]
export GOPATH=$SCRIPTS/go
export GOROOT_BOOTSTRAP=/usr/local/opt/go/libexec

# ******************************* 
# [Android SDK & NDK]
export ANDROID_BUILD_VERSION=25.0.0
export ANDROID_HOST_PLATFORM=darwin-x86_64
export ANDROID_EABI_VERSION=arm-linux-androideabi-4.9

export ANDROID_HOME=~/Applications/Android
export ANDROID_SDK=$ANDROID_HOME/sdk
export ANDROID_NDK=$ANDROID_HOME/android-ndk-r13b
export ANDROID_HOME=$ANDROID_SDK
export NDK=$ANDROID_NDK
export ANDROID_BIN=$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$ANDROID_SDK/build-tools/$ANDROID_BUILD_VERSION:$ANDROID_NDK #:$ANDROID_NDK/toolchains/$EABI_VERSION/prebuilt/$HOST_PLATFORM/bin

# ******************************* 
# [Cordova]
export CORDOVA_ANDROID_GRADLE_DISTRIBUTION_URL=http://localhost/files/gradle-2.14.1-all.zip

# ******************************* 
# [Calibre]
export CALIBRE_BIN=/Applications/calibre.app/Contents/MacOS

# ******************************* 
# [Rebuild path]
export BREW_BIN="$(brew --prefix)/bin:$(brew --prefix)/sbin"
export PATH=$SCRIPT_PATH:$BREW_BIN:$PATH:$ANDROID_BIN:$CALIBRE_BIN

# ******************************* 
# [Package config]
# export X11_PKG=/opt/X11/lib/pkgconfig
# export OPENCV_PKG=/usr/local/opt/opencv3/lib/pkgconfig:
#
# # /usr/local/lib/pkgconfig
# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH

