#!/bin/bash

git clone https://github.com/andrewvmail/verse.git
cd verse
./configure
make
mv verse.lua ../.
rm -rf verse/
eval $(luarocks path --bin)


