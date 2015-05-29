FROM golang:1.4.2

COPY . /go/src/docker-private-registry/
WORKDIR /go/src/docker-private-registry

RUN make develop
RUN make install

CMD ["docker-private-registry"]
