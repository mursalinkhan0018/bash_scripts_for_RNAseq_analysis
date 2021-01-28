#!/bin/bash
#Question to solve: count the sequence number and add them up to final count

#it is  easy to use the ls command if script is in the current directory which is mostly impossible
#thus it is a good one

# 1. I used the $@ to take the all the input paths Example ./1.fasta ./2.fasta ./3.fasta ./4.fasta
#2. I put the $@ paths in the file variable in a for loop thus file=./1.fasta at the fist loop and go on
#3. As my output needs only the fasta file name no need the path example=1.fasta 2.fasta 3.fasta etc
#I made variable a inside for loop. a is taking value from file variable. basename -a will give  only the
#last part of the long path example 1.fasta. -a option is for multiple argument we dont need as $file is giving one file only
#4. inside the y variable we are keeping count from the grep. grep can only count the  current files if the path was not there.
#I made the mistake at first hand took lots of time to identify it
#5. As we want to see the seq count and filename  we echo for every file using for loop
#6. Finally i=0 initial setup; then i veriable  change in every run by adding the count. we echo out at the end to see the sum.
#7. As i is a veriable and we are putting values in it we need to use $() for math (i+y) finally i=$((i+y))



#To make it like exercise2 ONLY
#echo $@
#echo $a
#echo $a | awk -v OFS="," '$1=$1' > dummy4.csv
#x1=$(awk -F "," '$1 ~ /.fasta$/ {print $1}' dummy4.csv)
#x2=$(awk -F "," '$2 ~ /.fasta$/ {print $2}' dummy4.csv)
#echo $x1 $x2 $x3

# this is a good code
#we used tired to match the results for Dr Oaks



i=0
for file in $@
do
#echo $file
a=$(echo `basename -a "$file"`) #You can pass multiple arguments using the -a option as follows:



y=$(grep ">" $file | wc -l)
echo $y $a
i=$((i+y))
done
echo $i
#rm dummy4.csv
