#run from the openapi directory


#!/bin/bash
#OpenApi validation
for FILE in ./tests/*CreatePatient*.json
do
	openapi-examples-validator --no-additional-properties -s $.components.schemas.ParameterCreatePatientPatient  -e ${FILE} ./HipFhirCommonOpenApi.yaml
done	

#FHIR validator
