#!/usr/bin/env bash

cp development.json.example config.json

sed -i "s/\"clientID\": \"\"/\"clientID\": \"$MB_OAUTH_CLIENT_ID\"/" config.json
sed -i "s/\"clientSecret\": \"\"/\"clientSecret\": \"$MB_OAUTH_CLIENT_SECRET\"/" config.json
sed -i "s/\"callbackURL\": \"\"/\"callbackURL\": \"$MB_OAUTH_CALLBACK_URL\"/" config.json
sed -i "s/\"secret\": \"\"/\"secret\": \"$SESSION_SECRET\"/" config.json
sed -i "s/\"host\": \"localhost:9200\"/\"host\": \"es:9200\"/" config.json
sed -i "s/\"host\": \"localhost\"/\"host\": \"redis\"/" config.json
sed -i "s/\"host\": \"127.0.0.1\"/\"host\": \"db\"/" config.json
sed -i "s/\"user\": \"bookbrainz\"/\"user\": \"postgres\"/" config.json
sed -i "s/\"password\": \"bookbrainz\"/\"password\": \"\"/" config.json

cp config.json development.json
cp config.json production.json
