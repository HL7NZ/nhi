Instance: Patient-update-eligibility
InstanceOf: OperationDefinition
Description: "A custom operation to update a patient's citizenship information."
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/update-eligibility"
* version = "1.0.0"
* name = "Update Eligibility"
* title = "An operation to update a patients citizenship information"
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-06-12T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "Update eligibility."
* affectsState = true
// need a value set for our custom operation names
* code = #"update-eligibility"
* comment = "The NHI is validated, the versionId is validated, the parameters validated. If all request parameters are valid the included items are updated on the Patients NHI record."
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


* parameter[+].name = #"nz-citizenship-status"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "NZ citizenship status" 


* parameter[+].name = #"nz-citizenship-source"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "NZ citizenship status information source" 


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

