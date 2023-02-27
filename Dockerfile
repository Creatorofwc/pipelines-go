# syntax=docker/dockerfile:1
FROM golang:1.17
COPY . .
RUN go get -d -v golang.org/x/net/html \
  && CGO_ENABLED=0 go build -a -installsuffix cgo -o app .