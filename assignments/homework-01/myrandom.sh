#!/bin/bash
x=$RANDOM
sed "${x}q;d" /usr/share/dict/words
