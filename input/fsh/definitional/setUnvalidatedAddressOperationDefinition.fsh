Instance: Patient-set-unvalidated-address
InstanceOf: OperationDefinition
Description: "A custom operation to Update a patient address using an unvalidated address."
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/set-unvalidated-address"
* version = "1.0.0"
* name = "Set Unvalidated Address"
* title = "Update a patient address using an unvalidated address."
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-06-12T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "Update a patient address using an unvalidated address."
* affectsState = true
// need a value set for our custom operation names
* code = #"set-unvalidated-address"
* comment = "The patient address is updated with an unvalidated address."
* resource = #Patient
* system = false
* type = false
* instance = true
* parameter[0].name = #"operation-type"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Must be $set-unvalidated-address"
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

* parameter[+].name = #"not-validated-address-reason"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The reason the address could not be validated" 


* parameter[+].name = #"address-type"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Must be physical or postal" 


* parameter[+].name = #"address-line-1"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The first line of the address" 

* parameter[+].name = #"address-line-2"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The second line of the address" 

* parameter[+].name = #"address-building-name"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Building name if required as additional address information, not returned by eSAM" 

* parameter[+].name = #"suburb"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string

* parameter[+].name = #"city"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string

* parameter[+].name = #"postal-code"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string

* parameter[+].name = #"country-code"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Must be supplied when not-validated-address-reason = OSEA and must not be ‘NZ’. When not-validated-address-reason not = OSEA and country-code is supplied it must be ‘NZ’ " 

* parameter[+].name = #"domicile-code"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "When supplied it must be a valid code in domicile-code valueset. When not supplied, the suburb and city are used to derive a domicile code from the streets file. If a suburb/city combination is not found in the streets file an error is returned  (note the client end-user can then enter a domicile code or client system can supply a default district domicile code)" 


* parameter[+].name = #"return"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Patient
* parameter[=].documentation = "The updated patient resource" 

