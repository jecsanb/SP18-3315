#! /bin/bash
#
# lab03.sh
# Copyright (C) 2018 Jecsan Blanco <jblancolicano1@buffs.wtamu.edu>
#
# Distributed under terms of the MIT license.
#
# This program reads a length and with and calculates the area and parameter.
#
echo "================================================"
echo "= Rectangle Area and Parameter Calculator      ="
echo "================================================"

echo -n "Enter the Length: "
read length
echo -n "Enter the Width: "
read width

let param="2 * ($length + $width)"
let area="$length * $width"

echo ""

echo "The inputted length is $length"
echo "The inputted width is $width"
echo "The area of the rectangle is $area"
echo "The parameter of the rectangle is $param"




