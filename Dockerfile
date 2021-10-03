FROM varnish:7.0.0-alpine

COPY default.vcl /etc/varnish/
COPY secret /etc/varnish/

COPY scripts/ /usr/local/bin/
ENTRYPOINT [ "/usr/local/bin/docker-varnish-entrypoint" ]