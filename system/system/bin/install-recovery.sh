#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:c0c462d45c1136948145af670d11e657f452e7e7; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:67108864:31d9b7c20c055f480fc19dc4796524eb0078aa23 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:c0c462d45c1136948145af670d11e657f452e7e7 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
