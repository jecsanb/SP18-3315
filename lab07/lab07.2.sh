#! /bin/bash
#
# lab07.2.sh
# Copyright (C) 2018 Jecsan Blanco <jblancolicano1@buffs.wtamu.edu>
#
# Distributed under terms of the MIT license.
#
PS3='Please enter your choice or enter "quit" to quit:'
menu=("Hamburger" "Turkey & Guacamole" "Grilled Chicken & Pesto" "Pizza" "quit");
output=(
'The price including tax for a hamburger is $5.40'
'The price including tax for a Turkey & Guacamole is $6.10'
'The price including tax for a Grilled Chicken & Pesto is $5.60'
'The price including tax for a pizza is $7.00'
'The code will end.'
)
select opt in "${menu[@]}"
do
    case $REPLY in
        "1")
            echo "${output[`expr $REPLY-1`]}" ;;
        "2")
            echo "${output[`expr $REPLY-1`]}";;
        "3")
            echo "${output[`expr $REPLY-1`]}";;
        "4")
            echo "${output[`expr $REPLY-1`]}";;
        "quit")
            echo "The code will quit!"
            exit 0
            ;;
        *)
            echo "The number is not valid!"
    esac
done

