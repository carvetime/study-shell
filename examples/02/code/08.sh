#!/bin/bash

# 获取字符串长度
person="xiaobaitongxue"
echo "person 字符串长度是： ${#person}"

# 提取子字符串
echo "1-3的字符串式是：${person:1:3}"

# 查找字符串
#echo `expr index "$person" tongxue`

# mac上不支持 expr 语法我们改用
start=${person%%tongxue*}+1
echo "起始位置是： ${#start}"