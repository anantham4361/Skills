#!/bin/bash
echo "Here I am going to learn head,tail,awk,sort,grep"
echo "=============================================="
echo "\nHead Command to print first 3 lines : Used command head -n 3 <filename>\n"
head -n 3 "sample.txt"
echo "=============================================="
echo "\nTail command to print last -5 lines : Used command tail -n 5 <filename>\n"
tail -n 5 "sample.txt"
echo "=============================================="
echo "\nSort command\n"
sort sample.txt
echo "=============================================="
echo "\nawk command to print 2nd and 4th column\n"
awk '{print $2,x$4}' sample.txt

