#!/bin/bash


#To grab all the file in the list

ls -l

ls -l | awk -v OFS="," '$1=$1' > dummy.csv
x=$(awk -F "," '$9 ~ /.fasta$/ {print $9}' dummy.csv)

#echo $x

i=0
for file in $x
do
echo $file
y=$(grep ">" $file | wc -l)
echo $y $file
i=$((i+y))
done
echo $i
rm dummy.csv
