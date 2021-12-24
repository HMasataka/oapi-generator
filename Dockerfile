FROM golang:1.17

WORKDIR /go/src/app

COPY . .

RUN go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@v1.9.0

CMD ["/bin/bash"]
