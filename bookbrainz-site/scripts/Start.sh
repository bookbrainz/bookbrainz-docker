#!/usr/bin/env bash

./node_modules/.bin/gulp compress
./node_modules/.bin/gulp less
npm run debug
