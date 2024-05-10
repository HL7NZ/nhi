
#run from the openapi directory


#!/bin/bash
#OpenApi validation
for FILE in ./tests/*AllergyIntolerance*.json
do
	openapi-examples-validator --no-additional-properties -s $.components.schemas.MwsAllergyIntolerance  -e ${FILE} ./HipFhirCommonOpenApi.yaml
done	

#FHIR validator
