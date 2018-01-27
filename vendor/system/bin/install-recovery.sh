#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 9308160 0d2ca75682112e9c51c35f7fab55f484a5632f1d 5742592 df8cdb66959ce9ea27e9a50bbd5929737e13dd16
fi
if ! applypatch -c EMMC:/dev/recovery:9308160:0d2ca75682112e9c51c35f7fab55f484a5632f1d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:5742592:df8cdb66959ce9ea27e9a50bbd5929737e13dd16 EMMC:/dev/recovery 0d2ca75682112e9c51c35f7fab55f484a5632f1d 9308160 df8cdb66959ce9ea27e9a50bbd5929737e13dd16:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
