#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:b17dd1081522da4fbcd6f0b0c141e0fb66321b09; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:3db3a543c3621e9ee760aa217038e6c4911c886a EMMC:/dev/block/bootdevice/by-name/recovery b17dd1081522da4fbcd6f0b0c141e0fb66321b09 67108864 3db3a543c3621e9ee760aa217038e6c4911c886a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
