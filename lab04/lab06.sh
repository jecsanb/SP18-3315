#! /bin/bash
#
# lab06.sh
# Copyright (C) 2018 Jecsan Blanco <jblancolicano1@buffs.wtamu.edu>
#
# Distributed under terms of the MIT license.
#


let factorial=1;
for i in $@; do
    for j in `seq 1 $i`; do
        let factorial=$factorial*$j;
    done
    echo "The factorial $i! is $factorial."
    factorial=1;

done

