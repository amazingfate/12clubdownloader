#! /bin/bash
if [ $# -ne 2 ]
then
    echo "Usage : $0 [url in 12 club]"
    exit -1
fi
#creat directory if it doesn't exist
if [ -d $2 ]
then
    echo
else
    mkdir $2
fi

curl $1 | grep -E -o "/program_items/[0-9]*"  > url.txt
while read downloadaddress
do
        aria2c --dir=$2 -x 3 http://12club.nankai.edu.cn/${downloadaddress}
    done < url.txt
rm url.txt
