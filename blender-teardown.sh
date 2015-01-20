#! /bin/bash


IDENTITY_FILE="/Users/barton/barton.satchwill/credentials/rac/barton/racbart.pem"

for INSTANCE in $(nova list | grep cybera | cut -d '|' -f 2); do
	nova delete $INSTANCE
done



