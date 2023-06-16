Instance: Patient-set-preferred-name
InstanceOf: OperationDefinition
Description: "An operation to indicate which of the patient's names is preferred"
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/set-preferred-name"
* version = "1.0.0"
* name = "Set Preferred Nam"
* title = "Set patient's preferred name"
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
* code = #"set-preferred-name"
* comment = "The NHI is validated, the versionId is validated, the name.id is validated. If all request parameters are valid the name.preferred boolean is set to TRUE on the requested name and FALSE on the current preferred name."
* resource = #Patient
* system = false
* type = false
* instance = true
* parameter[0].name = #"operation-type"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Must be $set-preferred-name"
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

* parameter[+].name = #"preferred-id"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #integer
* parameter[=].documentation = "The id of the name element to be set to be the preferred name (patient.name.id)" 

* parameter[+].name = #"return"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Patient
* parameter[=].documentation = "The updated patient resource" 

