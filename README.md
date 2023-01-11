# Repository for NHI IG

## Pre requisites 

* Install sushi
* Install Node.js (used by scripts)
* Install IG publisher (if using local builds)

## Running a build locally
**Prerequsites**:
​	You need to have sushi and the iG publisher installed. see [https://mohits.atlassian.net/wiki/spaces/HIP/pages/3178988120/How+to+build+and+deploy+FHIR+Integration+Guides]( https://mohits.atlassian.net/wiki/spaces/HIP/pages/3178988120/How+to+build+and+deploy+FHIR+Integration+Guides  )  

From a bash shell, run the 

`build-ig.sh` 

script from the project root,.. This will create the full-ig.zip file which contains the IG site
'hip-fhir-common\src\main\fsh\output\full-ig.zip'

 ## Building with CodeBuild
Log in to AWS as HipCoderRole and run the CodeBuild project hip-nhi-ig-build
Note : Set the codebuild project's environment variable 'BRANCH" to the name of the branch you want to build from (e.g "master")
This should output the build logs and full-ig.zip to the S3 bucket
`s3://nz-govt-moh-hip-build/hip-nhi-fhir-ig/nhi/`
**Note** - the buildspec.yaml file mastered in this project is referenced by codebuild from the S3 bucket. If you change it, you need to copy it to the s3 bucket for the changes to take effect:
`s3://nz-govt-moh-hip-build/hip-nhi-fhir-ig/buildspec.yml`




###  Deploying the IG
Check in your changes including the new full-ig.zip to github. Amplify will autobuild on commit 
   