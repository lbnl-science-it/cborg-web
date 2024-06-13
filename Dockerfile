FROM nginx:stable
ARG CLOUDFLARE_TOKEN

RUN echo "CBORG Web Container"

# copy published site
COPY public /usr/share/nginx/html

# from cloudflare latest docker
COPY --from=cloudflare/cloudflared /usr/local/bin/cloudflared /usr/local/bin/

# tunnel launch command
RUN echo "cloudflared --no-autoupdate tunnel run --token ${CLOUDFLARE_TOKEN}" > /usr/local/bin/start_tunnel.sh
RUN cat /usr/local/bin/start_tunnel.sh

ENTRYPOINT [ "/bin/sh" ]

CMD [ "-c", "nginx -g 'daemon off;' & sh /usr/local/bin/start_tunnel.sh" ]

