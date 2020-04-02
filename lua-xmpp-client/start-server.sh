#!/bin/bash

git clone https://github.com/esl/MongooseIM.git --depth=1
cd MongooseIM

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CFLAGS="-I/usr/local/opt/openssl/include"

make
make rel

subl ./_build/prod/rel/mongooseim/etc/mongooseim.cfg

./_build/prod/rel/mongooseim/bin/mongooseimctl live



