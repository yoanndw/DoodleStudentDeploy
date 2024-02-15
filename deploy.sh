#!/bin/bash

# Copy necessary files on the target VM

vm=changeme

ssh $vm "if [ -d ~/doodle ]; then rm -rf ~/doodle; fi;  mkdir ~/doodle"

for f in  docker-compose.vm.yaml api/APIKEY.txt front/*.conf
do
    echo $f
    destfile=$(basename $f)
    scp $f "$vm:~/doodle/$destfile"
done