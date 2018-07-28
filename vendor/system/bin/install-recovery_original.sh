#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8593408 778b5da0bacfaa4e01e9f0ace54819463f796b0f 6066176 01cfcd8d0fadab443f95871ae1e12a37053f0607
fi

if ! applypatch -c EMMC:/dev/recovery:8593408:778b5da0bacfaa4e01e9f0ace54819463f796b0f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/bootimg:6066176:01cfcd8d0fadab443f95871ae1e12a37053f0607 EMMC:/dev/recovery 778b5da0bacfaa4e01e9f0ace54819463f796b0f 8593408 01cfcd8d0fadab443f95871ae1e12a37053f0607:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
