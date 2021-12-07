gen:
	mkdir -p domain/model
	oapi-codegen -generate types,skip-prune -package model param.yaml > domain/model/param.gen.go
	mkdir -p application/api/pet
	oapi-codegen -generate types,skip-prune -package pet -import-mapping=./param.yaml:github.com/caravan-inc/fankey-api-generator/domain/model openapi.yaml > application/api/pet/pet.types.gen.go
	oapi-codegen -generate chi-server -package pet -import-mapping=./param.yaml:github.com/caravan-inc/fankey-api-generator/domain/model openapi.yaml > application/api/pet/pet.server.gen.go
