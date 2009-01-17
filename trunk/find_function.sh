#!/usr/bin/env bash
#
# The following script run on a given directory and parse the files to search for a specific function

path=
string=

if [ $# -ne "4" ];  # Script invoked with no command-line args?
then
  echo "Usage: `basename $0` options (-ps)"
  echo "    -p - The path to work with"
  echo "    -s - The string to find"
  echo
  echo "Example:"
  echo "    `basename $0` -p /usr/lib/lib\\*.so -s \"Hello World\""
  exit 65        # Exit and explain usage, if no argument(s) given.
fi

while getopts "p:s:" Option; do
  case $Option in
    p ) path="$OPTARG";;
    s ) string="$OPTARG";;
    * ) echo "Unknown Option was given ($OPTARG)."
        exit 65 ;;
  esac
done

if [ -z "$path" ] || [ -z "$string" ]; then
  echo "One or more parameter value is/are missing."
  exit 65
fi

for file in $path; do
  command=`objdump -R -r -t $file  | grep "$string"`
  if [ "$command" ]; then
    echo "found the string \"$string\" in $file"
    exit 1
  fi
done;

echo "Could not find the string \"$string\"."
