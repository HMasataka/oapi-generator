// Package Openapi provides primitives to interact with the openapi HTTP API.
//
// Code generated by github.com/deepmap/oapi-codegen version v1.9.0 DO NOT EDIT.
package Openapi

import (
	externalRef0 "github.com/caravan-inc/fankey-api-generator/model"
)

// FindPetRequest defines model for FindPetRequest.
type FindPetRequest struct {
	Id     *externalRef0.PetId  `json:"id,omitempty"`
	SortBy *externalRef0.SortBy `json:"sortBy,omitempty"`
}

// FindPetResponse defines model for FindPetResponse.
type FindPetResponse struct {
	Id   *externalRef0.PetId `json:"id,omitempty"`
	Name *string             `json:"name,omitempty"`
}

// FindPetsJSONBody defines parameters for FindPets.
type FindPetsJSONBody FindPetRequest

// FindPetsJSONRequestBody defines body for FindPets for application/json ContentType.
type FindPetsJSONRequestBody FindPetsJSONBody

