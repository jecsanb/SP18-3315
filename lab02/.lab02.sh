#! /bin/bash
#
# lab02.sh
# Copyright (C) 2018 Jecsan Blanco <jblancolicano1@buffs.wtamu.edu>
#
# Distributed under terms of the MIT license.
#
clear
echo "======== Qeustion 1 =========="
echo "                              "
echo "grep \"^[0-9][0-9][0-9]\"  hw02.txt "
echo "=============================="
grep "^[0-9][0-9][0-9]"  hw02.txt
echo "=============================="
echo "                              "
echo " --------------------------- "
echo "========= Question 2 ========="
echo "diff file1.txt file2.txt | grep "<" | wc -l"
echo "=============================="
echo "Number of diffrent words in file1:`diff file1.txt file2.txt | grep \"<\" | wc -l`"
echo "=============================="
echo "Diffrent Words in file1:"
echo "`diff file1.txt file2.txt | grep \"<\"`"
echo "=============================="
echo "                              "
echo "=============================="
echo "Diffrent Words in file2:"
echo "diff file1.txt file2.txt | grep ">" | wc -l"
echo "Number of diffrent words in file1:`diff file1.txt file2.txt | grep \">\" | wc -l`"
echo "Diffrent Words in file2:"
echo "`diff file1.txt file2.txt | grep \">\"`"
echo "=============================="
echo "All of the diffrent words"
echo "`diff file1.txt file2.txt | grep \"<\|>\"| wc -l`"
echo "`diff file1.txt file2.txt | grep \"<\|>\"`"
echo "=============================="


