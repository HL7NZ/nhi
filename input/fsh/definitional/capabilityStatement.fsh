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
* rest.resource.interaction.documentation = "Used to retrieve a Patient resource by Id.  **HTTP Request** 'GET'  **Scope required:** patient:read / Patient.r"
// * rest.resource.interaction[1].code = #patch
// * rest.resource.interaction[1].documentation = "Not yet enabled. Security will be applied to patch updates"
// * rest.resource.interaction[2].code = #create
// * rest.resource.interaction[2].documentation = "Not yet enabled. Security will be applied to create operations"
// * rest.resource.interaction[3].code = #search-type
// * rest.resource.interaction[3].documentation = "Not yet enabled"
* rest.resource.operation.name = "match"
* rest.resource.operation.definition = "http://hl7.org/fhir/OperationDefinition/Patient-match"
* rest.resource.operation.documentation = "**$Match (Find NHI)** with In parameter onlyCertainMatches: 0 (False) An operation to search the NHI by demographics using fuzzy logic. Returns a bundle of results with match scores.  **HTTP Request** 'POST'.  **Scope required:** patient:search / Patient.s.  **$Match (Validate)** with In parameter onlyCertainMatches: 1 (True) An operation to validate known patient demographic details against an NHI number. Returns a bundle of results with one patient resource that only includes the live nhi-id.  **HTTP Request** 'POST'.  **Scope required:** patient:validate / Patient.v"

* rest.resource.operation[1].name = "set-preferred-name"
* rest.resource.operation[1].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/set-preferred-name"
* rest.resource.operation[1].documentation = "An operation to set the patient.name.preferred boolean to True.  **HTTP Request** 'POST'.  **Scope required:** patient:write / Patient.u"

* rest.resource.operation[2].name = "set-address"
* rest.resource.operation[2].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/set-address"
* rest.resource.operation[2].documentation = "Allows a user to replace a physical address OR add or replace a postal address with an eSAM validated address.  **HTTP Request** 'POST'.  **Scope required:** patient:write / Patient.u" 

* rest.resource.operation[3].name = "set-unvalidated-address"
* rest.resource.operation[3].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/set-unvalidated-address"
* rest.resource.operation[3].documentation = "Allows a user to replace a physical address OR add or replace a postal address with an unvalidated address.  **HTTP Request** 'POST'.  **Scope required:** patient:write / Patient.u" 

* rest.resource.operation[4].name = "remove-postal-address"
* rest.resource.operation[4].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/remove-postal-address"
* rest.resource.operation[4].documentation = "Allows a user to remove a postal address from the nhi record.  **HTTP Request** 'POST'.  **Scope required:** patient:write / Patient.u" 

* rest.resource.operation[5].name = "update-birth"
* rest.resource.operation[5].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/update-birth"
* rest.resource.operation[5].documentation = "An operation to update a patient's birth details.  **HTTP Request** 'POST'.  **Scope required:**  system/Patient.u, system/Patient.a" 

* rest.resource.operation[6].name = "update-identity"
* rest.resource.operation[6].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/update-identity"
* rest.resource.operation[6].documentation = "An operation to update a patient's identity details.  **HTTP Request** 'POST'.  **Scope required:**  system/Patient.u, system/Patient.a" 

* rest.resource.operation[7].name = "update-death"
* rest.resource.operation[7].definition = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/update-death"
* rest.resource.operation[7].documentation = "An operation to update a patient's death details.  **HTTP Request** 'POST'.  **Scope required:**  system/Patient.u, system/Patient.a" 
