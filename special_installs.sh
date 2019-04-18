# better lockscreen
cp betterlockscreen@.service /etc/systemd/system/

# enable systemd service
systemctl enable betterlockscreen@$USER