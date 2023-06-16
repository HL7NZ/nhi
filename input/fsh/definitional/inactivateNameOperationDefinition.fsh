Instance: Patient-inactivate-name
InstanceOf: OperationDefinition
Description: "An operation to inactivate a name that is currently active on a patients record"
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/inactivate-name"
* version = "1.0.0"
* name = "Inactivate Name"
* title = "An operation to inactivate a name that is currently active on a patients record."
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-06-12T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "Inactivate name"
* affectsState = true
// need a value set for our custom operation names
* code = #"inactivate-name"
* comment = "The NHI is validated. The version-id is validated. The inactivate-id is validated. If all request parameters are valid the name is made inactive on the patient record."
* resource = #Patient
* system = false
* type = false
* instance = true
* parameter[0].name = #"operation-type"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Must be $inactivate-name"
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

* parameter[+].name = #"inactivate-id"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #integer
* parameter[=].documentation = "The id of the name element to be inactivated (patient.name.id))" 

* parameter[+].name = #"return"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Patient
* parameter[=].documentation = "The updated patient resource" 

