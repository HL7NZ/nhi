#!/bin/bash
set -x #echo on

common_version=$( yq '.dependencies."hl7.org.nz.fhir.ig.hip-core".version' ./sushi-config.yaml)
cp "./fhir_packages/hip-fhir-common-$common_version/openapi/HipFhirCommonOpenApi.yaml" ./openapi/HipFhirNhiOpenApi.yaml

#add the MWS paths to the common openapi spec
newpath=$(< ./openapi/HipFhirNhiPaths.yaml)  yq -i '.paths=env(newpath) ' openapi/HipFhirNhiOpenApi.yaml 
newversion=$(yq '.version' ./sushi-config.yaml)   yq -i '.info.version=env(newversion) ' openapi/HipFhirNhiOpenApi.yaml 

## delete aws api gw intergation 
yq -i 'del(.paths[][].x-amazon-apigateway-integration)' HipFhirNhiOpenApi.yaml

zip -u ./input/extra/HipFhirNhiOpenApi.zip ./openapi/HipFhirNhiOpenApi.yaml 

