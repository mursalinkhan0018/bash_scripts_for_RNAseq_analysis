#!/bin/bash

#To make it like exercise2 ONLY
#echo $@
#echo $a
#echo $a | awk -v OFS="," '$1=$1' > dummy4.csv
#x1=$(awk -F "," '$1 ~ /.fasta$/ {print $1}' dummy4.csv)
#x2=$(awk -F "," '$2 ~ /.fasta$/ {print $2}' dummy4.csv)
#echo $x1 $x2 $x3

i=0
for file in $@
do
#echo $file
a=$(echo `basename -a "$file"`)



y=$(grep ">" $file | wc -l)
echo $y $a
i=$((i+y))
done
echo $i
#rm dummy4.csv
