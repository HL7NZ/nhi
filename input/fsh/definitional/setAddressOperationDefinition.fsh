Instance: Patient-set-address
InstanceOf: OperationDefinition
Description: "A custom operation to Update a patient's address."
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/set-address"
* version = "1.0.0"
* name = "Set Address"
* title = "Update a patient's address."
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
* code = #"set-address"
* comment = "The address is validated and the patient address is updated."
* resource = #Patient
* system = false
* type = false
* instance = true
* parameter[0].name = #"set-address"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Must be $set-address"
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

* parameter[+].name = #"address-type"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Must be physical or postal" 

* parameter[+].name = #"nz-address-id"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The id of the validated address as retuned by the eSAM address service" 

* parameter[+].name = #"address-line"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The first line of the validated address as returned by eSAM"" 

* parameter[+].name = #"address-building-name"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Building name if required as additional address information, not returned by eSAM" 


* parameter[+].name = #"return"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Patient
* parameter[=].documentation = "The updated patient resource" 

