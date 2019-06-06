#!/bin/bash

echo "默认我会换行的"

printf "默认我不会换行的"

echo "结束啦"

printf "%-20s %-10s\n" 姓名 分数
printf "%-20s %-10.2f\n" xiaoli 99.6444
printf "%-20s %-10.2f\n" xiaowang 90.444

# %-20s %s %c %d %f都是格式替代符，-代表左对齐，%-10.2f .2代表保留2位小数

# 没有引号也可以输出
printf %s hello

# 格式只制定了一个后面的world会重用之前的%s
printf %s hello world
