#!/bin/bash
#Purpose : To check file permission of two files
if [ $# -eq 2 ]
then
f1=`ls -l $1|cut -c '2-10'`
f2=`ls -l $2|cut -c '2-10'`
if [ "$f1" = "$f2" ]
then
echo "File permissions are identical"
echo "File permissions are : $f1"
else
echo "File permissions are not identical"
echo "File permissions of file 1 : $f1"
echo "File permissions of file 2 : $f2"
fi
else
echo "This script only requires 2 files as arguments"
fi
