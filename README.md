# Fankey API Generator

```bash
oapi-codegen -generate types,skip-prune  params.yaml > model/param/params.gen.go
oapi-codegen -generate types,skip-prune -import-mapping=./params.yaml:github.com/caravan-inc/fankey-api-generator/model openapi.yaml > model/payload/pets.gen.go
oapi-codegen -generate chi-server -import-mapping=./params.yaml:github.com/caravan-inc/fankey-api-generator/model openapi.yaml > api/pets.gen.go
```
