

# echo "Building terminology summary"
# ../scripts/makeTerminologySummary.js


rm -f input/examples/*.json


JAVA -jar input-cache/org.hl7.fhir.publisher.jar -ig .
