#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:eac5ebe2bdc423335e69051e3957ea415a67f707; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:702042892430608b25837104ea7a2a0f2734801a EMMC:/dev/block/bootdevice/by-name/recovery eac5ebe2bdc423335e69051e3957ea415a67f707 67108864 702042892430608b25837104ea7a2a0f2734801a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
