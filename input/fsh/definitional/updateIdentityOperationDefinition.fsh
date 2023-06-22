Instance: Patient-update-identity
InstanceOf: OperationDefinition
Description: "A custom operation to update a patient's self-identified demographic information."
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/update-identity"
* version = "1.0.0"
* name = "Update Identity"
* title = "Update patient's self-identified demographic information"
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-06-12T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "Update patient's  self-identified demographic information."
* affectsState = true
// need a value set for our custom operation names
* code = #"update-identity"
* comment = "The NHI is validated, the versionId is validated, the parameters validated. If all request parameters are valid the included items are updated on the Patients NHI record."
* resource = #Patient
* system = false
* type = false
* instance = true
* parameter[0].name = #"operation-type"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Must be $update-identity"
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


* parameter[+].name = #"gender"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Patient's gender code" 


* parameter[+].name = #"gender-original-text"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Patient's gender text response" 

* parameter[+].name = #"ethnicity-1"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Patient's ethnicty code" 

* parameter[+].name = #"ethnicity-2"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Patient's ethnicty code" 

* parameter[+].name = #"ethnicity-3"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Patient's ethnicty code"

* parameter[+].name = #"ethnicity-4"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Patient's ethnicty code" 
 
* parameter[+].name = #"ethnicity-5"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Patient's ethnicty code" 

* parameter[+].name = #"ethnicity-6"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Patient's ethnicty code" 


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

