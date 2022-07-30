FROM alpine:edge AS build
RUN apk update
RUN apk upgrade
RUN apk add --no-cache git make build-base nodejs npm go 
WORKDIR /app
COPY . /app
ENV GOPATH /go
RUN go install github.com/gocopper/cli/cmd/copper@v1.2.2
