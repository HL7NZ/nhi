Instance: Patient-replace-name
InstanceOf: OperationDefinition
Description: "A custom operation to replace a name on a patient's record."
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/replace-name"
* version = "1.0.0"
* name = "Replace Name"
* title = "Replace a name on a patient's NHI record."
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-06-12T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "An operation to to replace a name on a patient's record."
* affectsState = true
// need a value set for our custom operation names
* code = #"replace-name"
* comment = "The NHI is validated, the versionId is validated, the parameters validated. If all request parameters are valid the new name is added to the nhi record, and the old one is removed."
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

* parameter[+].name = #"replace-id"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #integer
* parameter[=].documentation = "The id for the name on the nhi to be replaced"

* parameter[+].name = #"use"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "the name use qualifier for a name" 

* parameter[+].name = #"prefix"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "the name prefix" 

* parameter[+].name = #"given-1"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "the first or given name" 

* parameter[+].name = #"given-2"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "the middle or other given name(s)" 

* parameter[+].name = #"family"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "the family name" 

* parameter[+].name = #"preferred"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "attribute used to indicate whether the name is preferred or not" 

* parameter[+].name = #"information-source"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The information source for the patient's name" 

* parameter[+].name = #"nhi-name-use-extra"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "an attribute used to qualify pre-allocated and babyof names" 

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


