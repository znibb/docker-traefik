#!/bin/bash

mkdir -p ./secrets
mkdir -p ./cert

if [ ! -f .env ]; then
  cp ./files/.env.example .env
fi

if [ ! -f ./secrets/CF_API_EMAIL.secret ]; then
  cp ./files/CF_API_EMAIL.secret.example ./secrets/CF_API_EMAIL.secret
fi

if [ ! -f ./secrets/CF_DNS_API_TOKEN.secret ]; then
  cp ./files/CF_DNS_API_TOKEN.secret.example ./secrets/CF_DNS_API_TOKEN.secret
fi

if [ ! -f ./cert/acme.json ]; then
  cp ./files/acme.json.example ./cert/acme.json
fi
chmod 600 ./cert/acme.json

if [ ! -f ./usersfile ]; then
  cp ./files/usersfile.example ./usersfile
fi