Instance: Patient-update-birth
InstanceOf: OperationDefinition
Description: "A custom operation to to update a patient's birth details."
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/update-birth"
* version = "1.0.0"
* name = "Update Birth Details"
* title = "Update patient's birth details"
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-06-12T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "Update patient's birth details."
* affectsState = true
// need a value set for our custom operation names
* code = #"update-birth"
* comment = "The NHI is validated, the versionId is validated, the parameters validated. If all request parameters are valid the included items are updated on the Patients NHI record."
* resource = #Patient
* system = false
* type = false
* instance = true
* parameter[0].name = #"operation-type"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Must be $update-birth"
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

* parameter[+].name = #"birthdate"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The patient's date of birth" 


* parameter[+].name = #"birthdate-information-source"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The information source for the patient's date of birth" 

* parameter[+].name = #"country-of-birth"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "he patient's country of birth" 

* parameter[+].name = #"country-of-birth-information-source"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The information source for the patient's country of birth" 

* parameter[+].name = #"place-of-birth"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The place where the person as born, E.g. Whangārei. Only populate if country-of-birth is populated"



* parameter[+].name = #"return"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Patient
* parameter[=].documentation = "The updated patient resource" 

