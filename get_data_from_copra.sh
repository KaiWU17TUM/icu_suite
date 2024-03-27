#!/bin/bash

echo "Saving data to ${1}"
#nc -d -nvlp 18022 > ${1} &
sudo pkill nc 
sudo pkill ncat
ncat -nklp 18022 > ${1}  
