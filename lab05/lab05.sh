#! /bin/bash
#
# lab05.sh
# Copyright (C) 2018 Jecsan Blanco <jblancolicano1@buffs.wtamu.edu>
#
# A very inefficient  way of calculating pi.
# This program uses the Monte Carlo method of generating pi.
#
# If a circle of radius R is inscribed inside a square with side length 2R,
# then the area of the circle will be pi*R^2 and the area of the square will be (2R)^2.
# So the ratio of the area of the circle to the area of the square will be pi/4.
# This means that, if you pick N points at random inside the square, approximately N*pi/4 of those points should fall inside the circle.
# This program picks points at random inside the square. It then checks to see if the point is
# inside the circle (it knows it's inside the circle if x^2 + y^2 < R^2, where x and y are the coordinates of the point and R is the radius of the circle).
#The program keeps track of how many points it's picked so far (pointsInSquare) and how many of those points fell inside the circle (inCircle).

scale="scale=3";
pointsInSquare=10000;
#a way of gen numbers such that  0 < n < 1
randMax=$(bc <<< "2^15 - 1");
let inCircle=0;
while ( pointsInSquare -gt 0 ); do
    #gen the point
    x=$(bc <<< "$scale;$RANDOM/$randMax");
    y=$(bc <<< "$scale;$RANDOM/$randMax");
    #get the distance from origin
    d=$(bc <<< "$scale;sqrt ( $x^2 + $y^2 )");

    #check if it falls in the radius of the circle
    if [[ $(bc <<< "$d < 1") -eq 1 ]]; then
        #yes
        ((inCircle++));
    fi
    ((pointsInSquare--));
done
pi=$(bc -l <<< "4($inCircle/$pointsInSquare)");
echo "The approximation of pi using $pointsInSquare random points is $pi."

