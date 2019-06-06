#!/bin/bash

numbers=(1 2 3 4)
numbers[3]=5
echo ${numbers[0]}
echo ${numbers[@]}
echo ${#numbers[*]}
echo ${#numbers[@]}