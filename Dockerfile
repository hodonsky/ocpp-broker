FROM openresty/openresty:alpine-fat

COPY ./nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

RUN apk add --no-cache git

RUN luarocks install lua-resty-http && \
    luarocks install lua-resty-openssl && \
    luarocks install lua-resty-websocket && \
    luarocks install lua-resty-websocket-proxy

EXPOSE 8443