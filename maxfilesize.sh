#!/bin/bash
#Purpose : To check file with maximum size in a directory
echo "Enter directory  name"
read dir
if  [ ! -d $dir ]
then
echo "Invalid directory"
exit
fi
large=0
for file in `find $dir -type f`
do
size=`stat -c %s $file`
echo "Size of the $file is $size"
if [ $size -gt $large ]
then
large=$size
lf=$file
fi
done
echo "File with Maximum size is $lf and size is $large"

