#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:2895d7048059391ad513e2d50af7d1162aaa97a1; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:8d0f816eb68774363fd761503cc60faf982f4508 EMMC:/dev/block/bootdevice/by-name/recovery 2895d7048059391ad513e2d50af7d1162aaa97a1 67108864 8d0f816eb68774363fd761503cc60faf982f4508:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
