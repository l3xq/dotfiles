#!/bin/sh

for d in /dev/sd* 
do
if [[ $(blkid -o value -s UUID $d) = '83F53948-D2E3-4FD6-A7B9-638DABEEF48D' ]]; then
        mkdir -p /mnt/fsociety
        mount $d /mnt/fsociety
        echo "BackUp 32GB Flash drive mounted on /mnt/fsociety"

elif [[ $(blkid -o value -s UUID $d) = 'B7C4AA23-03FC-4876-9FA4-DF06458B54BC' ]]; then
        mkdir -p /mnt/random
        mount $d /mnt/random
        echo "Workspace 16GB Flash drive mounted on /mnt/random"

elif [[ $(blkid -o value -s UUID $d) = '54AB33DF-7596-4651-93E3-D44CCFDE4A9D' ]]; then
        mkdir -p /mnt/windows
        mount $d /mnt/windows
        echo "Windows drive mounted on /mnt/windows"

fi

done
