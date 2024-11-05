# Write a shell script that renames all files in the current directory that end in ".jpg" to begin with 
# today's date in the following format:  YYYYMMDD.  For example, if a picture of my cat was in 
# the current directory and today was October 31, 2016 it would change name from "mycat.jpg" to 
# "20161031mycat.jpg". 
# Hint: Look at the format options to the date command. 
# For "extra credit" make sure to gracefully handle instances where there are no ".jpg" files in the 
# current directory.  (Hint: Man bash and read the section on the nullglob option.)

#! /bin/bash
cd /Users/namdh

number_file=$1
file_extension=$2

for ((i=1;i<=number_file;i++))
do
        touch "text$i.$file_extension"
done

for FILE in *.txt
do
        cp ${FILE} $(date "+%Y-%m-%d")"-${FILE}"
done