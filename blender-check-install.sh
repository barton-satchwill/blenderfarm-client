#! /bin/bash

IDENTITY_FILE="/Users/barton/barton.satchwill/credentials/rac/barton/racbart.pem"
for IP in $(nova list | grep cybera | cut -d '|' -f 7 | cut -d ',' -f2); do
	ssh -i $IDENTITY_FILE ubuntu@$IP 'hostname && tail -n 12 ~/install.log'
	echo
done

# nova volume-create --display-name volume-test-spinny-disk --availability-zone 2

# for v in {1..20}; do 
# 	nova volume-create --display-name volume-test --availability-zone nova:c01-v01 2; 
# 	sleep 2
# done




# for v in 2128 2129 2130 2131 2132 2133 2134 2135 2136 2137 2138 2139 2140 2141 2144 2145 2146 2147 2148 2149 2150 2151 2152 2153 2154 2155 2157 2158 2159 2160; do
# 	echo $v
# end


# #! /bin/bash

# for I in b c d e f; do
# 	V="mnt/vd$I"
# 	echo
# 	echo "================ $V =================="
# 	rm -rf "/mnt/vd$I/*"

# 	dd if=/dev/zero of=/$V/zero bs=4k count=100000 oflag=direct
# 	dd if=/dev/zero of=/$V/zero bs=256k count=10000 oflag=direct
# 	rm /$V/zero
# 	fio --filename=/$V/fio --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=64 --runtime=10 --group_reporting --name=file1
# 	fio --filename=/$V/fio --direct=1 --rw=randwrite --bs=256k --size=1G --numjobs=64 --runtime=10 --group_reporting --name=file1
# 	fio --filename=/$V/fio --direct=1 --rw=randwrite --bs=1G --size=1G --numjobs=64 --runtime=10 --group_reporting --name=file1
# 	fio --filename=/$V/fio --direct=1 --rw=read --bs=4k --size=1G --numjobs=64 --runtime=30 --group_reporting --name=file1
# 	fio --filename=/$V/fio --direct=1 --rw=read --bs=1G --size=1G --numjobs=64 --runtime=30 --group_reporting --name=file1
# 	fio --filename=/$V/fio --direct=1 --rw=randwrite --bs=4k --size=1G --numjobs=64 --runtime=30 --group_reporting --name=file1 --rwmixread=80 --rwmixwrite=20
# 	fio --filename=/$V/fio --direct=1 --rw=randwrite --bs=256k --size=1G --numjobs=64 --runtime=30 --group_reporting --name=file1 --rwmixread=80 --rwmixwrite=20
# 	fio --filename=/$V/fio --direct=1 --rw=randwrite --bs=1G --size=1G --numjobs=64 --runtime=30 --group_reporting --name=file1 --rwmixread=80 --rwmixwrite=20
# done
