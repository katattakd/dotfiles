#### mounting SD card on /mnt
/etc/fstab:
```
[rest of fstab]
LABEL=KATSD /mnt vfat user,umask=0000,nofail,x-systemd.device-timeout=5s,x-systemd.idle-timeout=4h 0 0
```

#### ignoring power button
/etc/systemd/logind.conf/:
- Change HandlePowerKey to "ignore"
