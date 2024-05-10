
#run from the openapi directory


#!/bin/bash
#OpenApi validation
for FILE in ./tests/*Entitlement*.json
do
	openapi-examples-validator --no-additional-properties -s $.components.schemas.Coverage  -e ${FILE} ./HipFhirCommonOpenApi.yaml
done	

#FHIR validator
