#/bin/env sh
cp xscreensaver_daemon.service /etc/systemd/system/
service xscreensaver_daemon start
systemctl daemon-reload
