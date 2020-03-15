#!/bin/bash

# ./run.sh euler1.erl

FILE=$1
EXT=".erl"
FILE_NO_EXT=${FILE/%$EXT}

ls -d $FILE | entr -s "erlc ./$FILE && erl -noshell -s $FILE_NO_EXT start -s init stop"