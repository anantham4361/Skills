#!/bin/bash
if [ $# -eq 0 ]
then
echo "No arguments"
else
for name in $*
do
if grep $name /etc/passwd > /dev/null
then
echo "login name : $name"
hdir=`grep $name /etc/passwd | cut -d ":" -f6`
echo "Home Diretory : $hdir"
else
echo "$name is not valid Login name"
fi
done
fi
