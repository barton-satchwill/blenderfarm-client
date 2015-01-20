#! /bin/bash

IDENTITY_FILE="/Users/barton/barton.satchwill/credentials/rac/barton/racbart.pem"
for IP in $(nova list | grep -vE '1230|5e5f|928b|2b3a' | grep cybera | cut -d '|' -f 7 | cut -d ',' -f2); do
	ssh -i $IDENTITY_FILE ubuntu@$IP 'sudo dpkg --configure -a'
	ssh -i $IDENTITY_FILE ubuntu@$IP 'nohup ~/blender-setup.sh > install.log 2>&1 &'
done



