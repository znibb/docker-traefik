# docker-traefik
Docker container for running Traefik reverse-proxy using Cloudflare as DNS

The example user is test//test.

Create hashed passwords using bcrypt with ` htpasswd -bnBC 15 "" <PASSWORD> | tr -d ':\n'` (note the leading space to avoid it showing up in shell history, requires apache2-utils).

Add to `usersfile` as `user:<hash>`.

## DNS Setup
1. Create an A record for your domain name
1. Create another A record with the name "*" that's pointing to the same IP as the record above (suggestion: use [ddclient](https://github.com/znibb/docker-ddclient) to keep DNS records up to date)

## Docker Setup
1. Add your user to `usersfile` (don't forget to remove the example user!)
1. Input your domain name in `.env`
1. Input your Cloudflare API email in `secrets/CF_API_EMAIL.secret`
1. Go to the Cloudflare [dashboard](https://dash.cloudflare.com/profile/api-tokens) to create an API token.
1. Create a `Custom token` and select the following permissions:
    - Zone->DNS - Edit
    - Zone->Zone - Read
1. Input your Cloudflare API token in `secrets/CF_DNS_API_TOKEN.secret` 
1. Ensure that `cert/acme.json` has 600 permissions
1. Create proxy network for communication with other applications, `docker network create traefik`
1. Run `docker-compose up` and check logs
