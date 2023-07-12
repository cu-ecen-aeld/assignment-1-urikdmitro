#!/bin/sh

if [ $# -ne 2 ]; then
    echo "ERROR: Invalin number of arguments"
    echo "You must specify 2 parameters"
    echo "The order of the arguments should be:"
    echo "  1)File directory Path."
    echo "  2)String to be searched in the specified directory path"

fi

filesdir=$1
searcstr=$2

if [ -d $filesdir ]; then
    cd $filesdir

    linesnumber=$(grep -r $searcstr * | wc -l)
    filesnumber=$(grep -rc $searcstr * | wc -l)

    echo "The number of files are $filesnumber and the number of matching lines are $linesnumber"

else
    echo "ERROR: $filesdir is not a directory"

fi

exit 0
