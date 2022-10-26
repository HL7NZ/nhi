#!/bin/bash
set -x #echo on
# this script is intended to be run from code build, it should build the IG using the Hl7 IG Publisher

echo cleaning up temp directory ...
rm -r  ./temp

echo running sushi ...

./localscripts/makeTerminologySummary.js

echo getting dependencies...
nzbase_url=$(yq '.dependencies."fhir.org.nz.ig.base".uri' ./sushi-config.yaml)
nzbase_version=$(yq '.dependencies."fhir.org.nz.ig.base".version' ./sushi-config.yaml)

echo nzbase url =$nzbase_url
echo nzbase version =$nzbase_version


wget -e use_proxy=yes -e http_proxy=WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128  $nzbase_url"/full-ig.zip"
unzip ./full-ig.zip site/package.tgz

tar zxvf ./site/package.tgz
#fix the package url:
jq --arg url $nzbase_url '.url |= $url' ./package/package.json


#cp nz packages  into user's .fhir cache 
sudo mkdir -p  ~/.fhir/packages/fhir.org.nz.ig.base#$nzbase_version/package
sudo  cp -r ./package ~/.fhir/packages/fhir.org.nz.ig.base#$nzbase_version


#cp hl7 packages into user's .fhir cache 
aws s3 cp s3://nz-govt-moh-hip-build/codebuild-common/fhir/hl7.fhir.r4.core#4.0.1/package.zip ./hl7-package.zip
sudo mkdir ~/.fhir/packages/hl7.fhir.r4.core#4.0.1
unzip  ./hl7-package.zip -d ~/.fhir/packages/hl7.fhir.r4.core#4.0.1/

#cp hpi-fhir-common packages into  .fhir cache

aws s3 cp s3://nz-govt-moh-hip-build/codebuild-common/fhir/hl7.org.nz.fhir.ig.hip-core#dev/hip-fhir-common-package.tgz ./hip-fhir-common-package.tgz
sudo mkdir ~/.fhir/packages//hl7.org.nz.fhir.ig.hip-core#dev
tar zxvf ./hip-fhir-common-package.tgz -C  ~/.fhir/packages//hl7.org.nz.fhir.ig.hip-core#dev

pwd
ls ~/.fhir/packages//hl7.org.nz.fhir.ig.hip-core#dev

echo running sushi ...

./localscripts/makeTerminologySummary.js
sushi -o .

echo running local scripts
sudo chmod +x ./localscripts/makeTerminologySummary.js
./localscripts/makeTerminologySummary.js
pwd

echo running ig publisher
java -jar ~/publisher.jar -ig . -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -no-sushi

./fhirValidate.sh
