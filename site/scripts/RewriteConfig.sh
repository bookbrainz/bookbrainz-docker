#!/usr/bin/env bash

sed -i "s/\"clientID\": \"\"/\"clientID\": \"$MB_OAUTH_CLIENT_ID\"/" config.json
sed -i "s/\"clientSecret\": \"\"/\"clientSecret\": \"$MB_OAUTH_CLIENT_SECRET\"/" config.json
sed -i "s/\"callbackURL\": \"\"/\"callbackURL\": \"$MB_OAUTH_CALLBACK_URL\"/" config.json
sed -i "s/\"secret\": \"\"/\"secret\": \"$SESSION_SECRET\"/" config.json

cp config.json development.json
cp config.json production.json
