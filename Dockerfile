FROM varnish:7.0-alpine

COPY docker/default.vcl /etc/varnish/
COPY docker/secret /etc/varnish/
COPY docker/docker-varnish-entrypoint /usr/local/bin/

EXPOSE 80/tcp
EXPOSE 433/tcp
EXPOSE 10000/tcp

ENTRYPOINT [ "docker-varnish-entrypoint" ]
CMD []
