#! /bin/bash
#
# lab05.sh
# Copyright (C) 2018 Jecsan Blanco <jblancolicano1@buffs.wtamu.edu>
#
# Distributed under terms of the MIT license.
#

pointsInSquare=1000;
i=$pointsInSquare;
pointsInCircle=0;


RMAX=$(bc <<< "2^15 -1");

while [ $i -gt 0 ]; do
    #point
    #Q1 and Q2
    x=$(bc -l <<< "$RANDOM/$RMAX");
    y=$(bc -l <<< "$RANDOM/$RMAX");

    #distance from orgin
    #Q3
    d=$(bc -l <<< "sqrt($x^2 + $y^2)");
    if [ $(bc <<< "$d < 1") -eq 1 ];then
        ((pointsInCircle++));
    fi
    ((i--))
done

#Q4
areaOfASector=$(bc -l <<<"scale=4;$pointsInCircle/$pointsInSquare");
echo "The area of a sector is: $areaOfASector";
PI=$(bc <<< "4 * $areaOfASector")
echo "The aproximation of PI with $pointsInSquare is $PI."


