FROM python:3.11-alpine
COPY requirements.txt .
RUN /usr/local/bin/pip3 install --no-cache-dir -r requirements.txt
ENTRYPOINT ["mkdocs"]
