#!/bin/bash
set -x #echo on

echo cleaning up temp directory ...
rm -r  ./temp

echo running sushi ...

./localscripts/makeTerminologySummary.js

echo getting dependencies...
nzbase_url=$(yq '.dependencies."fhir.org.nz.ig.base".uri' ./sushi-config.yaml)
nzbase_version=$(yq '.dependencies."fhir.org.nz.ig.base".version' ./sushi-config.yaml)

echo nzbase url =$nzbase_url
echo nzbase version =$nzbase_version


#cleanup from previous run
rm ./full-ig.zip
rm -r site
rm -r package
wget -e use_proxy=yes -e http_proxy=WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128  $nzbase_url"/full-ig.zip"
unzip ./full-ig.zip site/package.tgz

tar zxvf ./site/package.tgz
#fix the package url:
jq --arg url $nzbase_url '.url |= $url' ./package/package.json


#cp nz packages  into users .fhir cache 
 cp -r ./package ~/.fhir/packages/fhir.org.nz.ig.base#$nzbase_version/



echo running sushi ...

./localscripts/makeTerminologySummary.js
sushi -o .

./localscripts/makeTerminologySummary.js

echo running ig publisher
java -jar /opt/fhir/publisher.jar -ig . -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -no-sushi

./fhirValidate.sh
