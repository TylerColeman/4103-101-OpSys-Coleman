#!/bin/bash
x=$RANDOM

#source:http://stackoverflow.com/questions/6022384/bash-tool-to-get-nth-line-from-a-file
sed "${x}q;d" /usr/share/dict/words
