#!/bin/bash
#purpose : To reverse argument list passed for a command

if [ $# -eq 0 ]
then
echo "No arguments passed"
exit
else
i=`echo $* | wc -w`
while [ $i -gt 0 ]
do
s=`echo $* | cut -d " " -f $i`
temp=`echo $temp $s`	
i=`expr $i - 1`
done
echo "Total num of args in list : $#"
echo "Args list : $*"
echo "Reversed list : $temp"
fi
