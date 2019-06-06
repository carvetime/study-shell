#!/bin/bash

file="./examples/04/code/01.sh"
emptyFile="./examples/04/code/empty"
folder='./examples/04/code'

if [ -w $file ]
then
    echo "文件可写"
else 
    echo "文件不可写"
fi

if [ -x $file ]
then
    echo "文件可执行"
else 
    echo "文件不可执行"
fi

if [ -s $emptyFile ]
then
    echo "文件不为空"
else 
    echo "文件为空"
fi

if [ -s $file ]
then
    echo "文件不为空"
else 
    echo "文件为空"
fi

if [ -s $folder ]
then
    echo "是文件夹"
else 
    echo "不是文件夹"
fi