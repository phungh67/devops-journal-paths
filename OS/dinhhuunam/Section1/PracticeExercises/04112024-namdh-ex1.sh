# Write a shell script that displays "This script will exit with a 0 exit status."  Be sure that the script 
# does indeed exit with a 0 exit status. 

#!/bin/bash
touch /root/file.txt

if [ $? -eq 0 ]
then
        echo  "This script will exit with a 0 exit status."
        exit 0
else
        echo "Not succedd"
        exit 1
fi