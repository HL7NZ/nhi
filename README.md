# Repository for NHI IG

## current release 
v0.10.0

## Pre requisites

* Install sushi
* Install Node.js (used by scripts)
* Install IG publisher (if using local builds)

## Running a build
**Prerequsites**:
​	You need to have sushi and the iG publisher installed. see [https://mohits.atlassian.net/wiki/spaces/HIP/pages/3178988120/How+to+build+and+deploy+FHIR+Integration+Guides]( https://mohits.atlassian.net/wiki/spaces/HIP/pages/3178988120/How+to+build+and+deploy+FHIR+Integration+Guides  )  

From a bash shell, run the 

`build-ig.sh` 

script from the project root,.. This will create the full-ig.zip file which contains the IG site
'hip-fhir-common\src\main\fsh\output\full-ig.zip'


###  Deploying the IG
Check in your changes including the new full-ig,.zip to github. Amplify will autobuild on commit