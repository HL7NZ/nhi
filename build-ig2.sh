#!/bin/bash
# build from ide-pat-linux

# echo cleaning up temp directory ...
rm -r  ./temp

echo running sushi ...
./runSushi.sh

rm full-ig.zip
echo getting dependencies...
nzbase_url=$(yq '.dependencies."fhir.org.nz.ig.base".uri' ./sushi-config.yaml)
nzbase_version=$(yq '.dependencies."fhir.org.nz.ig.base".version' ./sushi-config.yaml)

echo nzbase url =$nzbase_url
echo nzbase version =$nzbase_version
wget -e use_proxy=yes -e https_proxy=WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128  $nzbase_url"/full-ig.zip"

#cleanup from previous run
rm -r site
rm -r package
unzip ./full-ig.zip site/package.tgz
unzip ./full-ig.zip site/*.xml

tar zxvf ./site/package.tgz
#fix the package url:
jq --arg url $nzbase_url '.url |= $url' ./package/package.json > package.tmp && mv package.tmp ./package/package.json


#cp nz packages  into users .fhir cache
 cp -r ./package ~/.fhir/packages/fhir.org.nz.ig.base#$nzbase_version

cp ./input/template/* $HOME/.fhir/packages/fhir.base.template#current/package/content

echo running ig publisher
java -jar /opt/fhir/publisher.jar -ig . -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -no-sushi
# ./fhirValidate.sh
