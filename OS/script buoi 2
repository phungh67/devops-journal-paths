#!/bin/bash


echo "Nhập số file muốn tạo:"
read a


if [ "$a" -gt 0 ]; then
    for ((i = 1; i <= a; i++)); do
        echo -e  "Nhập nội dung muốn điền vào file:"
        read b
        filename="text$i.txt"
        echo "$b" > "$filename"
        chmod 400 "$filename"
    done
else
    echo "Nhập cho đúng vào...!"
fi
