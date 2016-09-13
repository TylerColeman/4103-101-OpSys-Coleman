#!/bin/bash
#date format source:http://stackoverflow.com/questions/1401482/yyyy-mm-dd-format-date-in-shell-script
DATE=`date +%Y-%m-%d`
cat $1>$DATE"_"$1