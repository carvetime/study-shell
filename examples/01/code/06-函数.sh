#!/bin/bash

func1(){
    echo '执行shell方法 没有返回值'
}

func2(){
    echo '有返回值'
    return 1
}

func3(){
    echo "第一个参数是 $1"
    # echo "第是十一个参数是 $11" 两位数的需使用${}
    echo "第是十一个参数是 ${11}"
}
func1
func2
func3 1 2 3 4 5 6 7 8 9 10 11 12
echo "func2返回值是$?"