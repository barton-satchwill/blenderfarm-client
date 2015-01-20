#! /bin/bash


IDENTITY_FILE="/Users/barton/barton.satchwill/credentials/rac/barton/racbart.pem"

for IP in $(nova list | grep cybera | cut -d '|' -f 7 | cut -d ',' -f2); do
	ssh -i $IDENTITY_FILE ubuntu@$IP 'pkill blender'
	ssh -i $IDENTITY_FILE ubuntu@$IP 'unzip ~/rendertest.zip'
	ssh -i $IDENTITY_FILE ubuntu@$IP 'nohup time ./blender-2.73-linux-glibc211-x86_64/blender -noaudio --background Monkey.blend --render-output //monkey --render-anim --render-format PNG > render.log &'
done



