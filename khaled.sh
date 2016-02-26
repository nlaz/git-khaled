#!/bin/bash

file_path="`dirname \"$0\"`"
file_name="khaled.txt"

file="${file_path}/${file_name}"
file_line_count=$(wc -l < ${file})


usage()
{
  
  (echo "git-khaled - Record commits to your repository with DJ Khaled."
   echo "USAGE: git khaled [options] <msg>"
   echo "OPTIONS:"
   echo "  --help             prints this message"
   echo "  -a, --all          automatically stages files that have been modified and deleted"
   echo "  -q, --quotes       outputs all possible patterns") 1>&2
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

    -a|--all)
      git add -u
      ;;

    -q|--quotes)
      cat khaled.txt
      exit 0
      ;;

    *)
      if [ $# -gt 1 ]; then
        usage
        exit 1
      fi
      message=$(echo ${1} | tr "[:lower:]" "[:upper:]")
      ;;
  esac
  shift 1
done

let X="${RANDOM} % ${file_line_count} + 1"
output=$(sed -n ${X}p ${file} | sed -e "s/<MESSAGE>/${message}/g")

git commit -m "${output}"