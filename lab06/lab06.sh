#!/bin/bash
#
# lab06.sh
# Copyright (C) 2018 Jecsan Blanco <jblancolicano1@buffs.wtamu.edu>
#
# Distributed under terms of the MIT license.
#
path="$HOME/Desktop/"
echo "Monitoring $path"
if [ -e $path ];then
    while (sleep 5);do
        for file in "$path"* ;do
            echo "monitoring `basename $file`"
            if [ -N "$file" ];then
                echo "`date` file `basename $file` was modified!"
            fi
        done
    done
else
    echo "path does not exist!"
fi
