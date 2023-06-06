#!/bin/bash   
#run from project root
set -x #echo on

#create a bundle for the results
cd ./output
rm -r ./temp
mkdir ./temp

unzip ./full-ig.zip site/package.tgz

echo validating Patient examples
cp ./Patient-*.json ./temp
java -jar ~/validator_cli.jar ./temp  -ig ./site/package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/NhiPatient -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_NhiPatient.html
#rm ./*temp/*.json

