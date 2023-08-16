Instance: Patient-create
InstanceOf: OperationDefinition
Description: "A custom operation to create a patient in the NHI"
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/create-patient"
* name = "Create Patient"
* status = #draft
* kind = #operation
* date = "2022-05-28T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "create a patient in the NHI"
* affectsState = true
* code = #"create"
* comment = "The patient information is validated. If all request parameters are valid the new patient is created in the NHI"

* resource = #Patient
* system = false
* type = true
* instance = false


* parameter[+].name = #"patient"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Patient
* parameter[=].targetProfile = "http://hl7.org.nz/fhir/StructureDefinition/CreateNhiPatient"

* parameter[+].documentation = "Patient demographic information"
* parameter[=].name = #"return"
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