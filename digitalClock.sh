#!/bin/bash
#Purpose : Digital clock using shell scripting

while [ true ]
do
clear

echo "+====================+"
date +%T
echo "+====================+"
echo "\a"
sleep 1s
done
