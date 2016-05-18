FROM golang:latest
MAINTAINER FreeBirdLjj

RUN go get github.com/michaeldv/mop && make -C $GOPATH/src/github.com/michaeldv/mop install && rm -fr $GOPATH/src/github.com

ENTRYPOINT ["mop"]

