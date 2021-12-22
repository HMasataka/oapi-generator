FROM golang:1.17

WORKDIR /go/src/app

COPY . .

RUN go install github.com/deepmap/oapi-codegen/cmd/oapi-codegen@v1.9.0

CMD \
    oapi-codegen -generate types,skip-prune -package model param.yaml > domain/model/param.gen.go && \
    oapi-codegen -generate types -package pet -include-tags=pet -import-mapping=./param.yaml:github.com/caravan-inc/fankey-server/domain/model openapi.yaml > application/api/pet/pet.types.gen.go && \
    oapi-codegen -generate chi-server -package pet -include-tags=pet -import-mapping=./param.yaml:github.com/caravan-inc/fankey-server/domain/model openapi.yaml > application/api/pet/pet.server.gen.go && \
    oapi-codegen -generate types -package user -include-tags=user -import-mapping=./param.yaml:github.com/caravan-inc/fankey-server/domain/model openapi.yaml > application/api/user/user.types.gen.go && \
    oapi-codegen -generate chi-server -package user -include-tags=user -import-mapping=./param.yaml:github.com/caravan-inc/fankey-server/domain/model openapi.yaml > application/api/user/user.server.gen.go
