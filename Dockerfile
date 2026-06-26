FROM python:3-slim

RUN pip install --no-cache-dir pproxy

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8080

ENV PROXY_USER=proxyuser
ENV PROXY_PASS=proxypass

ENTRYPOINT ["/entrypoint.sh"]
