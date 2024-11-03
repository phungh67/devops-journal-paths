#!/bin/bash


while read -r USERNAME; do
        sudo useradd -m -s /bin/bash "$USERNAME"

            echo "Tao user '$USERNAME' thanh cong"
            sudo usermod -aG $1 "$USERNAME"
            echo "User '$USERNAME' duoc cho vao group $1 ."


done
