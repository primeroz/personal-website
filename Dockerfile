FROM klakegg/hugo:0.111.3-onbuild AS hugo

FROM caddy:2.6.4

# Serve files from caddy root
COPY --from=hugo /target/ /usr/share/caddy/

# Set Caddy configuration
COPY ./Caddyfile /etc/caddy/Caddyfile
