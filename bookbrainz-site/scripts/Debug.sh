#!/usr/bin/env bash

./node_modules/.bin/gulp bundle
./node_modules/.bin/gulp less
npm run debug
