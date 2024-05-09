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
//comma delimited fields in documentation string extracted by makeCapabilityStatement.js:   <verb,url,doc,scope>
* rest.resource.interaction.documentation = "GET,[base]/Patient/[nhi-id], Retrieve a Patient resource by Id ,system/Patient.r"
// * rest.resource.interaction[1].code = #patch
// * rest.resource.interaction[1].documentation = "Not yet enabled. Security will be applied to patch updates"
// * rest.resource.interaction[2].code = #create
// * rest.resource.interaction[2].documentation = "Not yet enabled. Security will be applied to create operations"
// * rest.resource.interaction[3].code = #search-type
// * rest.resource.interaction[3].documentation = "Not yet enabled"
* rest.resource.operation.name = "match"
* rest.resource.operation.definition = "http://hl7.org/fhir/OperationDefinition/Patient-match"
//comma delimited fields in documentation string extracted by makeCapabilityStatement.js:   <verb,url,doc, scope>
* rest.resource.operation.documentation = "POST, [base]/Patient/$match, Match: with In parameter onlyCertainMatches=0 (False), the operation will search the NHI by demographics using fuzzy logic. Returns a bundle of results with match scores.  Validate:with In parameter onlyCertainMatches=1 (True) the operation will validate known patient demographic details against an NHI number. Returns a bundle of results with one patient resource that only includes the live nhi-id.,  system/Patient.u system/Patient.v"

* rest.resource.operation[1].name = "set-preferred-name"
* rest.resource.operation[1].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/set-preferred-name"
* rest.resource.operation[1].documentation = "POST, [base]/Patient/$set-preferred-name, Set the patient's preferred name, patient:Patient.u system/Patient.u"

* rest.resource.operation[2].name = "set-address"
* rest.resource.operation[2].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/set-address"
* rest.resource.operation[2].documentation = "POST, [base]/Patient/$set-address,Update a patient's address, patient:Patient.u system/Patient.u" 

* rest.resource.operation[3].name = "set-unvalidated-address"
* rest.resource.operation[3].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/set-unvalidated-address"
* rest.resource.operation[3].documentation = "POST, [base]/Patient/$set-unvalidated-address, Allows a user to replace a physical address OR add or replace a postal address with an unvalidated address,system/Patient.u" 

* rest.resource.operation[4].name = "remove-postal-address"
* rest.resource.operation[4].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/remove-postal-address"
* rest.resource.operation[4].documentation = "POST, [base]/Patient/$remove-postal-address, Remove a patient's postal address,patient:Patient.u system/Patient.u" 

* rest.resource.operation[5].name = "update-birth"
* rest.resource.operation[5].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/update-birth"
* rest.resource.operation[5].documentation = "POST, [base]/Patient/$update-birth, Update a patient's birth information,  system/Patient.u" 

* rest.resource.operation[6].name = "update-identity"
* rest.resource.operation[6].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/update-identity"
* rest.resource.operation[6].documentation = "POST, [base]/Patient/$update-identity, An operation to update a patient's identity details.,  patient:Patient.u  system/Patient.u " 

* rest.resource.operation[7].name = "add-name"
* rest.resource.operation[7].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/add-name"
* rest.resource.operation[7].documentation = "POST, [base]/Patient/$add-name, Add a name to a patient's NHI record, system/Patient.u" 

* rest.resource.operation[8].name = "replace-name"
* rest.resource.operation[8].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/replace-name"
* rest.resource.operation[8].documentation = "POST, [base]/Patient/$replace-name, An operation to replace a name on a patient's record, system/Patient.u" 

* rest.resource.operation[9].name = "inactivate-name"
* rest.resource.operation[9].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/inactivate-name"
* rest.resource.operation[9].documentation = "POST, [base]/Patient/$inactivate-name, Inactivate a name that is currently active on a patients record ,system/Patient.u" 

* rest.resource.operation[10].name = "update-eligibility"
* rest.resource.operation[10].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/update-eligibility"
* rest.resource.operation[10].documentation = "POST, [base]/Patient/$update-eligibility, Update a patient's citizenship information, system/Patient.u" 

* rest.resource.operation[11].name = "create"
* rest.resource.operation[11].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/create-patient"
* rest.resource.operation[11].documentation = "POST, [base]/Patient/$create,Create a new patient record in the NHI, system/Patient.c " 


// * rest.resource.operation[11].name = "update-death"
// * rest.resource.operation[11].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/update-death"
// * rest.resource.operation[11].documentation = "POST, [base]/Patient/$update-death, Update a patient's death details, system/Patient.u, system/Patient.a" 
