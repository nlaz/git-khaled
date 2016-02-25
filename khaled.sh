#!/bin/bash

FILE_PATH="`dirname \"$0\"`"

FILE_NAME="khaled.txt"
FILE="${FILE_PATH}/${FILE_NAME}"

NUM=$(wc -l < ${FILE})

# generate random number in range 0-NUM
let X="${RANDOM} % ${NUM} + 1"
# extract X-th line
output=$(sed -n ${X}p ${FILE} | sed -e "s/{1}/${1}/g" | tr "[:lower:]" "[:upper:]")
git commit -m "${output}"