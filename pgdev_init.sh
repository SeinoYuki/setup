#!/bin/bash

# build tool
sudo apt install build-essential libreadline-dev zlib1g-dev libipc-run-perl bison flex libxml2-utils xsltproc docbook-to-man

# mkdir
mkdir -p ~/dev/pgsql/master

# download pgrepo
cd ~/dev/pgsql/master
git clone git://git.postgresql.org/git/postgresql.git

# make
cd postgresql
./configure --prefix=/home/seinoyu/dev/pgsql/master --enable-debug --enable-cassert --enable-tap-tests CFLAGS=-O0
make -j 12
make install

# regression
make check-world -j 4 | tee /tmp/check-world.log
