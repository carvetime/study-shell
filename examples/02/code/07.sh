#!/bin/bash

say="hi"
name="carvetime"

hi1="${say} "$name" !"
hi2="${say} ${name} !"

echo $hi1 $hi2

hi3='hi '$name' !'
hi4='hi ${name} !'


echo $hi3 $hi4