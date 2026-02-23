Instance: Patient-delete-contact
InstanceOf: OperationDefinition
Description: "A custom operation to delete a contact on a patient's NHI record"
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/delete-contact"
* version = "1.0.0"
* name = "Delete Contact"
* title = "Delete a contact from a patient's NHI record."
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-06-12T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "An operation to delete a contact on a patient's NHI record"
* affectsState = true
// need a value set for our custom operation names
* code = #"delete-contact"
* comment = "The NHI is validated, the versionId is validated, the parameters validated. If all request parameters are valid the new contact is added to the nhi record."
* resource = #Patient
* system = false
* type = false
* instance = true

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

* parameter[+].name = #"contact-id"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #integer
* parameter[=].documentation = "The id of the telecom element to be deleted"

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

