Instance: Patient-add-contact
InstanceOf: OperationDefinition
Description: "A custom operation to add a contact to a patient's NHI record"
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/add-contact"
* version = "1.0.0"
* name = "Add Contact"
* title = "Add a contact to a patient's NHI record."
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-06-12T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "An operation to add a contact to a patient's NHI record"
* affectsState = true
// need a value set for our custom operation names
* code = #"add-contact"
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

* parameter[+].name = #"use"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "home or mobile" 

* parameter[+].name = #"system"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "phone or email" 


* parameter[+].name = #"value"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "the phone number or email address" 


* parameter[+].name = #"isValidFormat"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #boolean
* parameter[=].documentation = "The format of the email address or phone number is valid (true or  false)" 


* parameter[+].name = #"isValidDomain"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The domain of the email address is valid (true or  false)" 


* parameter[+].name = #"isVerified"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Verification has  been performed to determine that the email or phone number can be used to communicate with the patient (true or false)" 

* parameter[+].name = #"isShared"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The email address or phone number is shared with other people (true or false)" 

* parameter[+].name = #"isPrivate"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The email address or phone number may be used to communicate private health information about the individual identified by the NHI" 

* parameter[+].name = #"isPrivate"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "Additional information about the context of use of this contact" 

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

