#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8593408 05b35de9a340e3828172e9779e8c18aec65c6d2b 6066176 1d878638dd736d2ba525cfbf7a0b3da9ec8500c3
fi

if ! applypatch -c EMMC:/dev/recovery:8593408:05b35de9a340e3828172e9779e8c18aec65c6d2b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:6066176:1d878638dd736d2ba525cfbf7a0b3da9ec8500c3 EMMC:/dev/recovery 05b35de9a340e3828172e9779e8c18aec65c6d2b 8593408 1d878638dd736d2ba525cfbf7a0b3da9ec8500c3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
