#! /bin/bash
#
# lab07.sh
# Copyright (C) 2018 Jecsan Blanco <jblancolicano1@buffs.wtamu.edu>
#
# Distributed under terms of the MIT license.
#
menu=("Hamburger" "Turkey & Guacamole" "Grilled Chicken & Pesto" "Pizza");
output=(
'The price including tax for a hamburger is $5.40'
'The price including tax for a Turkey & Guacamole is $6.10'
'The price including tax for a Grilled Chicken & Pesto is $5.60'
'The price including tax for a pizza is $7.00'
'The code will end.'
)
i=1
while [ "$input" != "quit!" ];do
    for itm in "${menu[@]}";do
        echo "$i) $itm"
        ((i++))
    done
    i=0
    read -p  "Select an item: " num
    case "$num" in
        "1")
                echo "${output[0]}";;
        "2")
                echo "${output[1]}";;
        "3")
                echo "${output[2]}";;
        "4")
                echo "${output[3]}";;
        "quit!")
                break;;
        *)      echo "The number is not valid!"
     esac
done
echo "The code will end."

