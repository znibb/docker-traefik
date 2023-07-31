#!/bin/bash
if [ ! -f .env ]; then
  cp ./files/.env.example .env
fi
if [ ! -f ./secrets/CF_API_EMAIL.secret ]; then
  cp ./files/CF_API_EMAIL.secret.example ./secrets/CF_API_EMAIL.secret
fi
if [ ! -f ./secrets/CF_API_KEY.secret ]; then
  cp ./files/CF_API_KEY.secret.example ./secrets/CF_API_KEY.secret
fi
if [ ! -f ./cert/acme.json ]; then
  cp ./files/acme.json.example ./cert/acme.json
fi
if [ ! -f ./usersfile ]; then
  cp ./files/usersfile.example ./usersfile
fi