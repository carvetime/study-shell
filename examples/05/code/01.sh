#!/bin/bash

age1=30
age2=40

# 判断流程
if test $age1 -lt 18
then 
    echo "未成年"
elif test $age1 -lt 35
then
    echo "中年人"
else
    echo "老年人"
fi

if [ $age2 -lt 18 ]
then 
    echo "未成年"
elif [ $age2 -lt 35 ]
then
    echo "中年人"
else
    echo "老年人"
fi

# 循环流程
for val in 1 2 3 4 5
do 
    echo "value is $val"
done

# while语句

num=1
while([ $num -lt 3 ])
do 
    echo $num
    let "num++"
done

until [ $num -eq 5 ]
do 
    echo $num
    num=`expr $num + 1`
done 

# while : 
# do
#     echo "无限循环"
# done

# while true 
# do
#     echo "无限循环"
# done

# echo '请输入你的年龄'
# read age

# case $age in
#     18) echo '刚好成年'
#     ;;
#     50) echo '老年人'
#     ;;
#     *) echo '不清楚的年龄'
#     ;;
# esac

while :
do 
    echo "请猜一个1-5的数字"
    read numx
    case $numx in
        1|2|3|4) echo "请输入的数字是 $numx"
        ;;
        5) echo "输入有误将退出"
            continue
        ;;
        *) echo "输入有误将退出"
            break
        ;;
    esac
done