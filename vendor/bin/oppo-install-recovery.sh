#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:cc4609bcd6c042a43b4526719a30cb6c6517c77a; then
  applypatch  \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:67108864:1b717f2e2739a850522414ee1d21f1ab403d239c \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:cc4609bcd6c042a43b4526719a30cb6c6517c77a && \
      log -t recovery "Installing new oppo recovery image: succeeded" && \
      setprop ro.recovery.updated true || \
      log -t recovery "Installing new oppo recovery image: failed" && \
      setprop ro.recovery.updated false
else
  log -t recovery "Recovery image already installed"
  setprop ro.recovery.updated true
fi
