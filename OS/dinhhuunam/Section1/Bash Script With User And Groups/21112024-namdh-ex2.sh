#Have two file.txt
# group.txt
# dev
# ops
# admin

# user.txt
# hoang dev
# hung ops
# nam admin

# ====== output ========
# create 3 group and add 3 user to correct groups
# hints: using awk

#!/bin/bash
while read line;
do
        name=$(echo $line | cut -d ' ' -f 1)
        group=$(echo $line | cut -d ' ' -f 2)
        echo $group

        if id "$name" &>/dev/null; then
                echo "User $name already exists."
        else
                sudo useradd "$name"
        fi

    # Kiểm tra và thêm user vào nhóm
    while read tmp; do
        if [ "$group" = "$tmp" ]; then
            sudo usermod -aG "$group" "$name"
            echo "Added $name to group $group."
        fi
    done < ./group.txt

done < ./user.txt