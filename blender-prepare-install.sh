#! /bin/bash

IDENTITY_FILE="/Users/barton/barton.satchwill/credentials/rac/barton/racbart.pem"
for IP in $(nova list | grep cybera | cut -d '|' -f 7 | cut -d ',' -f2); do
	scp -i $IDENTITY_FILE -6 ~/blender/blender-setup.sh ubuntu@\[$IP\]:~/.
	scp -i $IDENTITY_FILE -6 ~/blender/rendertest.zip ubuntu@\[$IP\]:~/.
	ssh -i $IDENTITY_FILE ubuntu@$IP 'chmod u+x ~/blender-setup.sh'
done



