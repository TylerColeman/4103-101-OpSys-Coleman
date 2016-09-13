#!/bin/bash
#date format source:http://stackoverflow.com/questions/1401482/yyyy-mm-dd-format-date-in-shell-script
DATE=`date +%Y-%m-%d`

#source:http://stackoverflow.com/questions/2664740/extract-file-basename-without-path-and-extension-in-bash
#get file base 
filebase=$(basename $1)

#get file extension
fileext=${filebase##*.}

#clear file extension from base
filebase=${filebase%.*}

cat $1>$filebase"_"$DATE"."$fileext