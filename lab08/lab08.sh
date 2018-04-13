#! /bin/bash
#
# lab08.sh
# Copyright (C) 2018 Jecsan Blanco <jblancolicano1@buffs.wtamu.edu>
#
# Distributed under terms of the MIT license.
#

for deb in ./*; do
    pkgname=`basename $deb`
    if [[ $pkgname =~ (.+)_(.*)_(.*)\.deb ]];then
        echo "Package: ${BASH_REMATCH[1]}"
        echo "Version: ${BASH_REMATCH[2]}"
        echo "Architecture: ${BASH_REMATCH[3]}"

        echo "Version consists of:`echo ${BASH_REMATCH[2]}| tr '.' ','`"
        echo "New file name: $new_name"
    fi
done
