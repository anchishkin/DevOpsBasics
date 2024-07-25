#!/bin/bash

mkdir ~/linux_p2/backup
cd linux_p2

for i in *.txt
do
 file_name=$i
 current_date=$(date '+%Y-%m-%d')
 echo $file_name
 tar czf backup/$file_name"_"$current_date.tar.gz $file_name
done

filtr=$(find ~/linux_p2/backup -type f -name "*.tar.gz" -mmin +3 -type f);

if test $filtr
then
 mkdir ~/linux_p2/old_backup
 cd ~/linux_p2/backup
 mv *.tar.gz ~/linux_p2/old_backup
else
    echo "Error.Something went wrong."
fi

mkdir ~/linux_p2/log/