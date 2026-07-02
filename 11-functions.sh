#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "EXIT STATUS: $1"
    echo "what are you doing: $2"

}
if [$USERD -ne 0]
then
    echo "please run this script with root acccess."
    exit 1
else
    echo "you are super user."
fi

dnf install mysql -y
VALIDATE $? "installing Mysql"

dnf install git -y
VALIDATE $? "installing git" 