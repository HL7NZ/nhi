Instance: Patient-remove-postal-address
InstanceOf: OperationDefinition
Description: "A custom operation to remove a patient's postal address"
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/remove-postal-address"
* version = "1.0.0"
* name = "Remove Postal Address"
* title = "Remove a patient's postal address."
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-06-12T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "An operation to add a name to a patient's NHI record"
* affectsState = true
// need a value set for our custom operation names
* code = #"remove-postal-address"
* comment = "The parameters are validated.  The postal address on the nhi record is made inactive."
* resource = #Patient
* system = false
* type = false
* instance = true
* parameter[0].name = #"operation-type"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Must be $remove-postal-address"
* parameter[=].type = #string

* parameter[+].name = #"nhi"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Patient's nhi number"
* parameter[=].type = #string

* parameter[+].name = #"version-id"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The current value of the patient resources meta.versionId"

* parameter[+].name = #"return"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Patient
* parameter[=].documentation = "The updated patient resource" 

* parameter[+].name = #"failure"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #OperationOutcome
* parameter[=].documentation = "Error response" 


