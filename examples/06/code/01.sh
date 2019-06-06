#!/bin/bash

filepath='./examples/06/source/users'

echo 'hello shell' > $filepath

echo "hello shell 2" > $filepath

echo "hello shell 3" >> $filepath

#cat < $filepath

#notfoundPath=''

# cat notfoundPath > $filepath

#cat notfoundPath 1> $filepath 2> './examples/06/source/error'  

#cat notfoundPath > $filepath 2>&1

#cat notfoundPath > /dev/null 2>&1


