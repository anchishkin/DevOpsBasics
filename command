#!/bin/bash
mkdir ~/linux_p2
cd linux_p2
for (( i=1; i <= 20; i++ ))
do
    printf '#%s/Z\n' "$(openssl rand -hex 4)" > $i.txt
done







