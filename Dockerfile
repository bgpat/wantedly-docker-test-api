FROM alpine:latest

ENTRYPOINT ["/bin/server"]

COPY . /go/src/github.com/bgpat/wantedly-apitest-server

RUN apk update &&\
    apk add git go &&\
    cd /go/src/github.com/bgpat/wantedly-apitest-server &&\
    export GOPATH=/go PATH=$PATH:$GOPATH/bin &&\
    go get &&\
    go build -o /bin/server &&\
    rm -rf /go &&\
    apk del --purge git go
