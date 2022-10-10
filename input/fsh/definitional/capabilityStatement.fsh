Instance: NhiCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition

* status =  #draft
* date = "2020-04-21"
* kind = #instance
* fhirVersion = #4.0.1
* format = #json
* patchFormat = #json
* implementation.description = "HPI system"
* implementationGuide = "http://hl7.org.nz/fhir/StructureDefinition/NHI"
* publisher = "New Zealand Ministry of Health"
* contact.name = "Pat Ryan"
* contact.telecom.system = #email
* contact.telecom.value = "pat.ryan@health.govt.nz"
* description = "A FHIR API in front of the New Zealand NHI"
* rest.mode = #server

* rest.resource.type = #Patient
* rest.resource.profile = "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
* rest.resource.interaction.code = #read
* rest.resource.interaction.documentation = "Used to retrieve a Patient resource by Id."
// * rest.resource.interaction[1].code = #patch
// * rest.resource.interaction[1].documentation = "Not yet enabled. Security will be applied to patch updates"
// * rest.resource.interaction[2].code = #create
// * rest.resource.interaction[2].documentation = "Not yet enabled. Security will be applied to create operations"
// * rest.resource.interaction[3].code = #search-type
// * rest.resource.interaction[3].documentation = "Not yet enabled"
* rest.resource.operation.name = "match"
* rest.resource.operation.definition = "http://hl7.org/fhir/OperationDefinition/Patient-match"
* rest.resource.operation.documentation = "$Match (Find NHI) with in parameter onlyCertainMatches: 0 (False) An operation to search the NHI by demographics using fuzzy logic. Returns a bundle of results with match scores, $Match (Validate) with in parameter onlyCertainMatches: 1 (True) An operation to validate known patient demographic details against an NHI number. Returns a bundle of results with one patient resource that includes the live nhi-id"

* rest.resource.operation[1].name = "set-preferred-name"
* rest.resource.operation[1].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/set-preferred-name"
* rest.resource.operation[1].documentation = "an operation to set the patient.name.preferred boolean to True." 

* rest.resource.operation[2].name = "set-address"
* rest.resource.operation[2].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/set-address"
* rest.resource.operation[2].documentation = "Allows a user to replace a physical address OR add or replace a postal address with an eSAM validated address" 
