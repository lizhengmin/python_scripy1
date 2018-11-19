#!/bin/bash

ls -li | tail -n +2 | cat -n

echo "-------------------------------------"

read -p "请输入要删除的文件编号："  num

inum=`ls -li | tail -n +2 | cat -n |  awk '$1=='$num'{print $2}'`

find . -inum $inum -exec rm {} \;
