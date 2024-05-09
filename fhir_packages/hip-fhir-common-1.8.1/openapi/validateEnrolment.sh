
#run from the openapi directory


#!/bin/bash
#OpenApi validation
for FILE in ./tests/*Enrolment*.json
do
	openapi-examples-validator --no-additional-properties -s $.components.schemas.EpisodeOfCare  -e ${FILE} ./HipFhirCommonOpenApi.yaml
done	

#FHIR validator
