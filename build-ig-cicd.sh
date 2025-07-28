#!/bin/bash
#set -x -e #echo on, exit on error
set -x
# this script is intended to be run from code build, it should build the IG using the Hl7 IG Publisher
# to run locally, pass in the parameter true:
## ./build-ig-cicd.sh true

#if you have transitive dependencies on hip-fhir-commom they have  to be specified explicitily 
## you can define multiple dependnecnt version like this
#HFC_TRANS=("1.6.0", "1.5.1")
HFC_TRANS=("1.6.0")


islocal=$1

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

addPackage() {
echo " adding package named $1 version $2 from source $3 using url $4"
ls  $3

if [[ "$islocal" == "true" ]]; then
  mkdir -p ~/.fhir/packages/$1#$2
  mkdir -p ~/.fhir/packages/$1#current
else 
  sudo mkdir -p ~/.fhir/packages/$1#$2
  sudo mkdir -p ~/.fhir/packages/$1#current
fi
   

tar zxvf  $3 -C  ~/.fhir/packages/$1#$2
#publisher seems to need the current version as well
tar zxvf  $3 -C  ~/.fhir/packages/$1#current
##fix the package url:
jq --arg url $4 '.url |= $url' ~/.fhir/packages/$1#$2/package/package.json > temp2.json
mv temp2.json  ~/.fhir/packages/$1#$2/package/package.json

}

echo getting nzbase dependencies...
nzbase_name="fhir.org.nz.ig.base"
nzbase_url=$(yq '.dependencies."fhir.org.nz.ig.base".uri' ./sushi-config.yaml)
nzbase_version=$(yq '.dependencies."fhir.org.nz.ig.base".version' ./sushi-config.yaml)
nzbase_source="./fhir_packages/nzbase-conformance-module-$nzbase_version/package.tgz"
addPackage "$nzbase_name" "$nzbase_version" "$nzbase_source" "$nzbase_url"

#cp hl7 packages into user's .fhir cache 
if [[ "$islocal" == "true" ]]; then
  echo "copying using hip-profile - make sure you have updated ~/.aws/credentals"
  aws s3 cp s3://nz-govt-moh-hip-build/codebuild-common/fhir/hl7.fhir.r4.core#4.0.1/package.zip ./hl7-package.zip  --profile hip-profile
  mkdir -p ~/.fhir/packages/hl7.fhir.r4.core#4.0.1
else
  aws s3 cp s3://nz-govt-moh-hip-build/codebuild-common/fhir/hl7.fhir.r4.core#4.0.1/package.zip ./hl7-package.zip
  sudo mkdir -p  ~/.fhir/packages/hl7.fhir.r4.core#4.0.1
fi
unzip -q -o ./hl7-package.zip -d ~/.fhir/packages/hl7.fhir.r4.core#4.0.1/


#cp hl7-uv packages into user's .fhir cache 
echo "islocal =$islocal"
if [[ "$islocal" == "true" ]]; then
  echo "copying using hip-profile - makse sure yoiu have updates ~/.aws/credentals"
  aws s3 cp s3://nz-govt-moh-hip-build/codebuild-common/fhir/hl7.fhir.uv.tools#current/package.zip ./hl7-uv-package.zip  --profile hip-profile
  mkdir -p ~/.fhir/packages/fhir/hl7.fhir.uv.tools#current
else
   aws s3 cp s3://nz-govt-moh-hip-build/codebuild-common/fhir/hl7.fhir.uv.tools#current/package.zip ./hl7-uv-package.zip
   sudo mkdir -p ~/.fhir/packages/fhir/hl7.fhir.uv.tools#current
fi
 unzip -q -o ./hl7-uv-package.zip -d ~/.fhir/packages/fhir/hl7.fhir.uv.tools#current/ 

echo getting common dependencies...
pwd
ls -l ./fhir_packages/

common_name="hl7.org.nz.fhir.ig.hip-core"
common_version=$(yq '.dependencies."hl7.org.nz.fhir.ig.hip-core".version' ./sushi-config.yaml)

comdir=$(getPomProperty "fhir-common.version")
common_source="./fhir_packages/hip-fhir-common-$comdir/package/package.tgz"
common_url=$(yq '.dependencies."hl7.org.nz.fhir.ig.hip-core".uri' ./sushi-config.yaml)
addPackage "$common_name" "$common_version" "$common_source" "$common_url" 


#satisfy transitive dependnecy
#this will copy the latest version of hfc into the fhir cache location for each dependant version
## so this will only be correct when the current version is backwards compatiblt with the dependnant versions
for version in  ${HFC_TRANS[@]}; do 
    echo "getting transitive dependencies for hip-fhir-common"
	addPackage "$common_name" $version  "$common_source" "$common_url"
done


GIT_COMMIT_ID=$(git rev-parse HEAD)
echo adding source info to index.md
sed -i "s/_BRANCH_/$BRANCH/g"  ./input/pagecontent/index.md
sed -i "s/_GIT_COMMIT_ID_/$GIT_COMMIT_ID/g"  ./input/pagecontent/index.md

echo running sushi ...
sushi -o .

echo running local scripts
chmod +x ./localscripts/makeTerminologySummary.js
./localscripts/makeTerminologySummary.js


echo "building openapi spec"
chmod +x ./openapi/makeoas.sh
./openapi/makeoas.sh


echo "Making API summary"
chmod +x ./localscripts/makeCapabilityStatement.js
./localscripts/makeCapabilityStatement.js nhi

echo "building openapi spec"
chmod +x ./openapi/makeoas.sh
./openapi/makeoas.sh
echo $?

echo running ig publisher
java -jar ~/publisher.jar -ig . -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -no-sushi  -authorise-non-conformant-tx-servers 



chmod +x ./fhirValidate.sh
./fhirValidate.sh

ls -l ./output/package.tgz
