#!/bin/bash

PwdGen="./generate_random_password.sh"

# define CSV separator
IFS=","

while read username FullName
do

    sudo useradd -m -c "$FullName" $username

    # Generate random password
    Pwd=$($PwdGen)

    # assign the password 
    sudo usermod --password $(echo "$Pwd" | openssl passwd -1 -stdin) $username

    echo "$username,$Pwd" >> passwords.txt

    sudo mkdir /home/$username/public_html
    sudo chown $username /home/$username/public_html
    sudo chmod -R go+rX /home/$username/

done < users_to_create.csv

chmod go-rwx passwords.txt
