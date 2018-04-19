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
        package=${BASH_REMATCH[1]}
        version=${BASH_REMATCH[2]}
        arch=${BASH_REMATCH[3]}

        echo "Package:${package}"
        echo "Architecture: ${arch}"
        echo "Version consists of:`echo ${version}| tr '.' ','`"

        nums=${version:0:3}
        f_num=${version:4:2}
        l_num=${version:7:2}
        new_version="${l_num}.${f_num}"
        new_name="${package}.${nums}.${new_version}_${arch}.deb"
        echo "New name: ${new_name}"



    fi
done
