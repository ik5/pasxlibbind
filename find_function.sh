#!/usr/bin/env bash
#
# Copyright (c) 2009, Ido Kanner <idokan at@at gmail dot.dot com>
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
# * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the 
#   documentation and/or other materials provided with the distribution.
# * Neither the names of contributors may be used to endorse or promote products derived from this software 
#   without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, 
# INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
# IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, 
# OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; 
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# The following script run on a given directory and parse the files to search for a specific function
#

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
