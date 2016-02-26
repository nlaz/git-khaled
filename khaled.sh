#!/bin/bash

FILE_PATH="`dirname \"$0\"`"

FILE_NAME="khaled.txt"
FILE="${FILE_PATH}/${FILE_NAME}"

NUM=$(wc -l < ${FILE})


usage()
{
  
  (echo "git-khaled - Record commits to your repository with DJ Khaled."
   echo "USAGE: git khaled [options] <msg>"
   echo "OPTIONS:"
   echo "  --help                       prints this message"
   echo "  -a, --all                    automatically stages files that have been modified and deleted"
   echo "  -q, --quotes                 outputs all possible patterns") 1>&2
}

if [ $# -le 0 ]; then
  echo "Oops! Invalid number of arguments \n"
  usage
  exit 0
fi

while [ $# -gt 0 ]
do
  case $1 in

    --usage)
      usage
      exit 0
      ;;

    -a|--all);;

    -q|--quotes)
      cat khaled.txt
      exit 0
      ;;

    *)
      if [ $# -gt 1 ]; then
        usage
        exit 1
      fi
      MSG=$(echo ${1} | tr "[:lower:]" "[:upper:]")
      ;;
  esac
  shift 1
done

let X="${RANDOM} % ${NUM} + 1"
OUTPUT=$(sed -n ${X}p ${FILE} | sed -e "s/<MESSAGE>/${MSG}/g")

git commit -m "${OUTPUT}"