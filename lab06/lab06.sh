#!/bin/bash
#
# lab06.sh
# Copyright (C) 2018 Jecsan Blanco <jblancolicano1@buffs.wtamu.edu>
#
path="$HOME/Desktop/"
changed=false
echo "Monitoring $path"
while ( true );do
    for file in $path*;do
        if [ -N "$file" ];then
            echo "`date` file `basename $file` was modified!"
            changed=true
        fi
    done
    if [ ! $changed ];then
        echo “No Modified Files Found!”
        cchanged=false
    fi
    sleep 5

done
