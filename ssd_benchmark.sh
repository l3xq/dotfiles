#!/bin/sh 

echo "\n Disks available for bench [lsblk]\n"
lsblk 

echo "\n Test timings [hdparam]\n"
sudo hdparm -Tt /dev/nvme0n1 

echo "\n Blocks 8k [dd only!]\n"
dd if=/dev/zero of=/tmp/output bs=8k count=10k; rm -f /tmp/output 

echo "\n Blocks 384k [dd & conv to fdatasync]\n"
dd if=/dev/zero of=/tmp/output conv=fdatasync bs=384k count=1k; rm -f /tmp/output

echo "\n Blocks 1k [dd & conv to fdatasync]\n"
dd if=/dev/zero of=/tmp/output conv=fdatasync bs=1k count=1k; rm -f /tmp/output
