#! /vendor/bin/sh

# grep the modem partition for baseband version and set it
if [ -f "/data/modem_version.txt" ]; then
    setprop gsm.version.baseband `cat /data/modem_version.txt`
else
    echo `strings /firmware/image/modem.b18 | grep "S86518C1" | head -1` > /data/modem_version.txt
    setprop gsm.version.baseband `cat /data/modem_version.txt`
fi