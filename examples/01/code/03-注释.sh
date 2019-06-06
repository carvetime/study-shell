#!/bin/bash

# 单行注释

# echo "单行注释"

# 多行注释1

:<<EOF
echo "多行注释"
echo "多行注释"
echo "多行注释"
EOF

# 多行注释2
:<<!
echo "多行注释"
echo "多行注释"
echo "多行注释"
!

# 多行注释3
':<<
echo "多行注释"
echo "多行注释"
echo "多行注释"
'