#!/bin/bash



a=2
b=3

# 注意`expr 1+1`写法是错误的，需要有空格 
sum=`expr $a + $b`
echo "sum:${sum}"

# 注意`if [$a == $b]`写法是错误的，需要有空格 
if [ $a == $b ]
then
    echo "a 等于 b"
fi

if [ $a != $b ]
then 
    echo "a 不等于 b"
fi

if [ $a -eq $b ]
then 
    echo " a 等于 b"
else
    echo "a 不等于 b"
fi

if [ $a -ne $b ]
then 
    echo "a 不等于 b"
else
    echo " a 等于 b"
fi

# -eq 等于 equals 
# -ne 不等于 no equals
# -gt 大于 greater than
# -lt 小于 less than
# -ge 大于等于 greater equals
# -le 小于等于 less equals

if [ $a -gt 1 -a $b -gt 1 ]
then 
    echo "$a 大于 1 同时 $b 大于 1 "
fi

if [[ $a -gt 1 && $b -gt 1 ]]
then 
    echo "$a 大于 1 同时 $b 大于 1 "
fi

# ！非运算 
# -o 或运算 or
# -a 且 and

c='abc'
d='abc'
e='def'

if [ $c = $d ]
then
    echo "$c 等于 $d"
fi

if [ $d == $d ]
then
    echo "$c 等于 $d"
fi

if [ $d != $e ]
then
    echo "$c 不等于 $e"
fi

if test $d != $e 
then
    echo "$c test方法 判断不等于 $e"
fi