# Fankey API Generator

```bash
oapi-codegen -generate types,skip-prune  models.yaml > model/models.go
oapi-codegen -generate types,chi-server -import-mapping=./models.yaml:github.com/caravan-inc/fankey-api-generator/model openapi.yaml > api/pets.gen.go
```
