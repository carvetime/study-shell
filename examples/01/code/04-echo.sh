#!/bin/bash

echo "there is a log"

echo there is a log

echo "her name is \"wendell\""

echo -e "文字太长了我需要换行，我到下一行再说 \n 我排到第二行啦"

echo -e "文字太长了我需要换行，但是我坚决不换号\c 我还在第一行"

echo "文字宝贵需要输出到文件上" > "./examples/01/source/01.txt"

read name

echo "welcome $name"