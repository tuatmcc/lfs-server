FROM golang:1.22
LABEL org.opencontainers.image.authors="GitHub, Inc."

WORKDIR /go/src/github.com/git-lfs/lfs-test-server

COPY . .

RUN go build -o /usr/local/bin/lfs-test-server .

EXPOSE 8080

CMD ["lfs-test-server"]
