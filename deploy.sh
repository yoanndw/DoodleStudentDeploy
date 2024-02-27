#!/bin/bash

# Copy necessary files on the target VM

vm=zprojet@ydew.istic.univ-rennes1.fr

ssh $vm "if [ -d ~/doodle ]; then rm -rf ~/doodle; fi;  mkdir ~/doodle"

for f in  docker-compose.yaml api/APIKEY.txt nginx certbot
do
    echo $f
    destfile=$(basename $f)
    scp -r $f "$vm:~/doodle/$destfile"
done