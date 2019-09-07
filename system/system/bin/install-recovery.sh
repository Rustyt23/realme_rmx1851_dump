#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:7aba244e086c50a92758eb89702526578a4049a8; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:549153cd64f4da0434f311f523de4bb616e40895 EMMC:/dev/block/bootdevice/by-name/recovery 7aba244e086c50a92758eb89702526578a4049a8 67108864 549153cd64f4da0434f311f523de4bb616e40895:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
