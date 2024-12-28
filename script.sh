#!/bin/bash
#Purpose : Forloop to print table of given number
echo -e "Please provide a number : \c"
read -r n

echo "Multiplication Table for $n:"
for i in $(seq 1 10); do
  result=$((n * i))
  echo "$n x $i = $result"
done
