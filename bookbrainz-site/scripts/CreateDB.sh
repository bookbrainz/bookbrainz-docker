#!/usr/bin/env bash

cd /dumps

wget -N https://bookbrainz.org/dumps/latest.tar.bz2
bunzip2 latest.tar.bz2

pg_restore -h db -U postgres -e -C -O latest.tar -d postgres
