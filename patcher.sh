#!/bin/sh

# Apply these patches before compilation:

ROM_TREE=$PWD
PATCHER_PATH=$ROM_TREE/patcher
CUSTOM=$PATCHER_PATH/sultan

# Clean up first
cd $ROM_TREE/bionic
git clean -f -d && git reset --hard
cd $ROM_TREE/bootable/recovery
git clean -f -d && git reset --hard
cd $ROM_TREE/build
git clean -f -d && git reset --hard
cd $ROM_TREE/external/boringssl
git clean -f -d && git reset --hard
cd $ROM_TREE/external/libavc
git clean -f -d && git reset --hard
cd $ROM_TREE/external/libhevc
git clean -f -d && git reset --hard
cd $ROM_TREE/external/libmpeg2
git clean -f -d && git reset --hard
cd $ROM_TREE/external/libnfc-nci
git clean -f -d && git reset --hard
cd $ROM_TREE/external/libnl
git clean -f -d && git reset --hard
cd $ROM_TREE/external/libopus
git clean -f -d && git reset --hard
cd $ROM_TREE/external/libvpx
git clean -f -d && git reset --hard
cd $ROM_TREE/external/skia
git clean -f -d && git reset --hard
cd $ROM_TREE/external/sonivox
git clean -f -d && git reset --hard
cd $ROM_TREE/external/tremolo
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/av
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/base
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/ex
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/native
git clean -f -d && git reset --hard
cd $ROM_TREE/frameworks/opt/net/wifi
git clean -f -d && git reset --hard
cd $ROM_TREE/hardware/libhardware
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Bluetooth
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/CertInstaller
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/LockClock
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Messaging
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/PackageInstaller
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/Settings
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/apps/UnifiedEmail
git clean -f -d && git reset --hard
cd $ROM_TREE/packages/services/Telephony
git clean -f -d && git reset --hard
cd $ROM_TREE/system/core
git clean -f -d && git reset --hard
cd $ROM_TREE/vendor/cm
git clean -f -d && git reset --hard
cd $ROM_TREE/vendor/cmsdk
git clean -f -d && git reset --hard

cd $ROM_TREE

### Custom patches
echo "Applying patch sets: 001 [skipped]"
#patch -d build					-p1 -s -N --no-backup-if-mismatch < $CUSTOM/build0.patch
echo "Applying patch sets: 002"
patch -d build					-p1 -s -N --no-backup-if-mismatch < $CUSTOM/build1.patch
echo "Applying patch sets: 003 [skipped]"
#patch -d build					-p1 -s -N --no-backup-if-mismatch < $CUSTOM/build2.patch
echo "Applying patch sets: 004"
patch -d frameworks/av				-p1 -s -N --no-backup-if-mismatch < $CUSTOM/frameworks-av0.patch
echo "Applying patch sets: 005"
patch -d frameworks/base			-p1 -s -N --no-backup-if-mismatch < $CUSTOM/frameworks-base0.patch
echo "Applying patch sets: 006"
patch -d frameworks/base			-p1 -s -N --no-backup-if-mismatch < $CUSTOM/frameworks-base1.patch
echo "Applying patch sets: 007"
patch -d frameworks/base			-p1 -s -N --no-backup-if-mismatch < $CUSTOM/frameworks-base2.patch
echo "Applying patch sets: 008"
patch -d frameworks/base			-p1 -s -N --no-backup-if-mismatch < $CUSTOM/frameworks-base3.patch
echo "Applying patch sets: 009"
patch -d frameworks/base			-p1 -s -N --no-backup-if-mismatch < $CUSTOM/frameworks-base4.patch
echo "Applying patch sets: 010"
patch -d frameworks/base			-p1 -s -N --no-backup-if-mismatch < $CUSTOM/frameworks-base5.patch
echo "Applying patch sets: 011"
patch -d packages/apps/LockClock		-p1 -s -N --no-backup-if-mismatch < $CUSTOM/packages-apps-LockClock0.patch
echo "Applying patch sets: 011"
patch -d packages/apps/Settings			-p1 -s -N --no-backup-if-mismatch < $CUSTOM/packages-apps-Settings0.patch
echo "Applying patch sets: 012 [skipped]"
#patch -d packages/apps/Settings			-p1 -s -N --no-backup-if-mismatch < $CUSTOM/packages-apps-Settings1.patch
echo "Applying patch sets: 013"
patch -d packages/apps/Settings			-p1 -s -N --no-backup-if-mismatch < $CUSTOM/packages-apps-Settings2.patch
echo "Applying patch sets: 014"
patch -d system/core				-p1 -s -N --no-backup-if-mismatch < $CUSTOM/system-core0.patch
echo "Applying patch sets: 015"
patch -d system/core				-p1 -s -N --no-backup-if-mismatch < $CUSTOM/system-core1.patch
echo "Applying patch sets: 016"
patch -d system/core				-p1 -s -N --no-backup-if-mismatch < $CUSTOM/system-core2.patch
