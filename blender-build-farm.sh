#! /bin/bash

REGION="yyk"

if [ "$OS_REGION_NAME" = "Edmonton" ]; then
	REGION="yeg"
fi

for i in {1..4}; do
	nova boot --key-name racbart --image 'Ubuntu 14.04' --flavor m1.xlarge $REGION-xlarge-$i
done

