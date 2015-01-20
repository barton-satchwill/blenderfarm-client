#! /bin/bash

IDENTITY_FILE="/Users/barton/barton.satchwill/credentials/rac/barton/racbart.pem"
for IP in $(nova list | grep cybera | cut -d '|' -f 7 | cut -d ',' -f2); do
	ssh -i $IDENTITY_FILE ubuntu@$IP 'hostname && grep "Saved:" render.log | cut -d " " -f 4 ' 
done


