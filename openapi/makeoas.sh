getPomProperty() {
 
 #echo "getting value of $1 from pom"
 line=$(grep $1.*$1 pom.xml  | grep -v '!' | tr -d '\t ')

 plength=${#1}
 offset=2
 plength=$(($plength+$offset))
 sline=${line:plength:200}
 #trim trailing chars
 property=${sline%%</$1>}
 #echo "property $1 = $property"
 echo $property
 }


#!/bin/bash
set -x #echo off
 
# constants
IG_FILENAME=HipFhirNhiOpenApi
PATHS_FILENAME=HipFhirNhiPaths.yaml

common_version=$(getPomProperty "fhir-common.version")
ig_version=$(getPomProperty "revision")
echo "ig_version = $ig_version"
 
cp "./fhir_packages/hip-fhir-common-$common_version/openapi/HipFhirCommonOpenApi.yaml" ./openapi/$IG_FILENAME.yaml

#add the NHI paths to the common openapi spec
newpath=$(< ./openapi/$PATHS_FILENAME)  yq -i '.paths=env(newpath) ' openapi/$IG_FILENAME.yaml 
newversion=$(yq '.version' ./sushi-config.yaml)   yq -i '.info.version=env(newversion) ' openapi/$IG_FILENAME.yaml

yq -i 'del(.paths[][].x-amazon-apigateway-integration)' openapi/$IG_FILENAME.yaml
yq -i 'del(.paths[][].x-amazon-apigateway-request-validator)' openapi/$IG_FILENAME.yaml

yq -i '.info.title="HIP NHI FHIR"'  openapi/$IG_FILENAME.yaml
yq -i '.info.description="Te Whatu Ora NHI FHIR services"'  openapi/$IG_FILENAME.yaml
version=$ig_version  yq -i '.info.version = env(version)'  openapi/$IG_FILENAME.yaml
zip -u ./input/extra/$IG_FILENAME.zip ./openapi/$IG_FILENAME.yaml

