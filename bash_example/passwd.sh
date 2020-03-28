#!/bin/bash
#scriptname: passwd.sh

echo -e "Enter passwd: "

stty -echo #读取密码前禁止回显

read passwd

stty  echo #重新允许回显

echo

echo Passwd read successfully.
