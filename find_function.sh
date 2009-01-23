#!/usr/bin/env bash
#
# Copyright (c) 2009, Ido Kanner <idokan at@at gmail dot.dot com>
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without 
# modification, are permitted provided that the following conditions 
# are met:
#
# * Redistributions of source code must retain the above copyright 
#   notice, this list of conditions and the following disclaimer.
# * Redistributions in binary form must reproduce the above copyright notice, 
#   this list of conditions and the following disclaimer in the 
#   documentation and/or other materials provided with the distribution.
# * Neither the names of contributors may be used to endorse or promote 
#   products derived from this software without specific prior written 
#   permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
# ARE DISCLAIMED. 
# IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY 
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, 
# OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
# POSSIBILITY OF SUCH DAMAGE.
#
# The following script run on a given directory and parse the files to search 
# for a specific function
#

# NOTE:
# Remarks regarding the following tools that the script is using:
#
# - nm will work only if there are symbols exported in the shared library. That 
#   is 'strip' did not run on that library. If nm works, the actual function of 
#   the library is always located under the T symbol that nm display.
#
# - If the library does not have symbols, objdump can work. In order to find 
#   the proper exported function, we need to use the -T command line option, 
#   and find what we are looking for under the ".text" section. If we find it 
#   in any other section it means that the function is not exported by this 
#   library.
#

path=           # the path to look at
string=         # the string to look for
cmd=            # the command to be use (objdump, strings etc..)
sensitive=""    # case sensitive flag
verbose=0       # to see more information about what we are doing.
regex="-F"        # indicates if the string is regular expression or not

if [ $# -lt "4" ]; then  # Script invoked with not enough command-line arguments ?
  echo    "Usage: `basename $0` -p <path> -s <string> [ [-t|-o] -i -v -r]"
  echo    "    -i - Use case insensitive (upper and lower case are the same) default is case sensitive"
  echo    "    -n - Use the 'nm' command instead of 'objdump' or 'strings'"
  echo    "    -o - Use the 'objdump' command instead of 'strings' or 'nm' (default)"
  echo -e "    -p - The path to work with (\E[1mrequired\E[m)"
  echo    "    -r - Tells us that the string that was given using -s is POSIX regular expression"
  echo -e "    -s - The string to find (\E[1mrequired\E[m)"
  echo    "    -t - Use the 'strings' command instead of 'objdump' command"
  echo    "    -v - Verbose - to see more information about "
  echo
  echo    "Example:"
  echo    "    `basename $0` -p /usr/lib/lib\\*.so -s \"\.text\s+[0-9a-zA-Z]+.*test\" -r"
  echo    "    `basename $0` -p /usr/lib/lib\\*.so -s \"^[0-9a-zA-Z]+ T test\" -n -r"
  exit 65        # Exit and explain usage, if no argument(s) given.
fi

while getopts "p:s:toivrn" Option; do
  case $Option in
    i ) sensitive="-i";;
    n ) cmd="nm ";;
    o ) cmd="objdump -T";; #cmd="objdump -C -p -x -R -r -t ";;
    p ) path="$OPTARG";;
    r ) regex="--extended-regexp -e";;
    s ) string="$OPTARG";;
    t ) cmd="strings ";;
    v ) verbose=1;;
    * ) echo "Unknown Option was given ($OPTARG)."
        exit 65 ;;
  esac
done

if [ -z "$path" ] || [ -z "$string" ]; then # if we do not have a path or string, then the required arguments did you passed.
  if [ -z "$path" ]; then
    echo "The path value is missing. The information of the path is mandatory, please provide it."
  fi

  if [ -z "$string" ]; then
    echo "The string value is missing. The information of the string is mandatory, please provide it."
  fi
  exit 65
fi

if [ -z "$cmd" ]; then # No command was given ?
  cmd="objdump -T"
  if [ $verbose -eq 1 ]; then
    echo "Set default command to \"$cmd\""
  fi
fi

found=0
for file in $path; do
  command=`$cmd "$file" | grep $sensitive $regex "$string"`
  if [ $verbose -eq 1 ]; then
    echo -n "$file ($string): "
  fi
  if [ -n "$command" ]; then
    if [ $verbose -eq 1 ]; then
      echo -n " ["
      echo -ne "\E[0;34m" # blue foreground
      echo -ne "\E[4m"    # underline
      echo -ne "\E[1m"    # bold
      echo -n "V"
      echo -ne "\E[m"     # reset colors to default
      echo "] "
    else
      echo "\"$string\" found in \"$file\""
      #exit 1
    fi
   found=1
  else
    if [ $verbose -eq 1 ]; then
      echo -n " ["
      echo -en "\E[0;31m" # red foreground
      echo -n "X"
      echo -en "\E[m"     # reset colors to default
      echo "] "
    fi
  fi
done;

if [ $found -eq 0 ]; then
  echo "Could not find the string \"$string\"."
fi
