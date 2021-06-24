cd /root/davmail; 
echo "***************** navigate to /root/davmail *****************"
ant
echo "***************** build *****************"
sudo systemctl stop davmail
echo "***************** shutdown service *****************"
sudo dpkg -i dist/davmail_5.5.1-trunk-1_all.deb
echo "***************** install dep *****************"
sudo systemctl start davmail
echo "***************** start service *****************"