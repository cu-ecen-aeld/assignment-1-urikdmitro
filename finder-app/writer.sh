#!/bin/bash

if [ $# -ne 2 ]; then
    echo "ERROR: Invalin number of arguments"
    echo "You must specify 2 parameters"
    echo "The order of the arguments should be:"
    echo "  1)File directory Path."
    echo "  2)String to be written to file"

fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")"
echo "$writestr" > "$writefile"

if [ $? -ne 0 ]; then
  echo "ERROR: Failed to create the file."
  exit 1
fi

exit 0

