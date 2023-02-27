# syntax=docker/dockerfile:1
FROM golang:1.17
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go get -d && go build
