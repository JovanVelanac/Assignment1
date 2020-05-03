FROM golang:alpine
RUN mkdir -p /app
COPY Assignment1 /app
WORKDIR  /app
RUN chmod 777 ./Assignment1
CMD ./Assignment1

