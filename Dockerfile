FROM varnish:7.0-alpine

COPY docker/default.vcl /etc/varnish/
COPY docker/secret /etc/varnish/
COPY docker/docker-varnish-entrypoint /usr/local/bin/

ENTRYPOINT [ "docker-varnish-entrypoint" ]
CMD []