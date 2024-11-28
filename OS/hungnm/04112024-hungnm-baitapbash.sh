#Write a shell script that displays "This script will exit with a 0 exit status." Be sure that the script does indeed exit with a 0 exit status.


#!/bin/bash

sudo cat /etc/shadow #doicaulenhbatki

EXIT_STATUS=$?
echo "This script will exit with a 0 exit status. --> ${EXIT_STATUS}"




#Write a shell script that accepts a file or directory name as an argument. Have the script report
#if it is a regular file, a directory, or other type of file. If it is a regular file, exit with a 0 exit status.
#If it is a directory, exit with a 1 exit status. If it is some other type of file, exit with a 2 exit status.


#!/bin/bash

if [ -f $1 ]; then
        echo "$1 la file."
        exit 0
elif [ -d $1 ]; then
        echo "$1 la thu muc"
        exit 1
else
        echo "$1 la loai khac"
        exit 2
fi


#Write a script that executes the command "cat /etc/shadow". If the command returns a 0 exit
#status report "Command succeeded" and exit with a 0 exit status. If the command returns a
#non­zero exit status report "Command failed" and exit with a 1 exit status.

#!/bin/bash

sudo cat /etc/shadow 

EXIT_STATUS=$?

if [ $? -eq "0" ]; then
        echo "Command Succeed"
else
        echo "Command Failed Succesfully XD"
        exit 1
fi

#Write a shell script that renames all files in the current directory that end in ".jpg" to begin with
#today's date in the following format: YYYY­MM­DD. For example, if a picture of my cat was in
#the current directory and today was October 31, 2016 it would change name from "mycat.jpg" to
#"2016­10­31­mycat.jpg".
#Hint: Look at the format options to the date command.
#For "extra credit" make sure to gracefully handle instances where there are no ".jpg" files in the
#current directory. (Hint: Man bash and read the section on the nullglob option.)
#Bonus: script can create a number of file with name file1.txt; file2.txt ;...\
#sscript.sh <number_of_file> <file_extension>
#vd:
#script.sh 10 txt => text1.txt; text2.txt; text3.txt;...
#=> 2024-11-04-text1.txt

#!/bin/bash

for ((i=1; i<=$1; i++)); do
    filename="text$i.txt"
    echo "$2" > "$filename"
done

for FILE in *.txt; do
    cp "$FILE" "$(date "+%Y-%m-%d")-$FILE"
done