FROM alpine:3.18.4
COPY requirements.txt .
RUN apk upgrade --no-cache && \
    apk add --no-cache python3 py3-pip && \
    /usr/bin/pip3 install --no-cache-dir -r requirements.txt
ENTRYPOINT ["mkdocs"]
