#! /bin/bash
#
# lab06.sh
# Copyright (C) 2018 Jecsan Blanco <jblancolicano1@buffs.wtamu.edu>
#
# Distributed under terms of the MIT license.
#

echo "Monitoring `pwd` ..."
echo "Press  ctrl-c to exit."
GAP=5
while ( true );do
    sleep $GAP
    for file in ./* ;do
        if [ -N "./$file" ];then
            echo "`date`: New entry in $file:"
        fi
    done
done



