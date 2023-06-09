Instance: createNhiPatientOperationDefinition
InstanceOf: OperationDefinition
Description: "A custom operation to create a patient in the NHI"
Usage: #example

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/create-patient"
* version = "1.0.0"
* name = "OperationDefinition-createNhiPatientOperationDefinition"
* title = "Create a new patient record in the NHI"
* status = #draft
* kind = #operation
* date = "2022-05-28T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "create a patient in the NHI"
* affectsState = true
// need a value set for our custom operation names
* code = #"create-patient"
* comment = "The patient information is validated. If all request parameters are valid the new patient is created in the NHI"
* resource = #Patient
* system = false
* type = true
* instance = true
* parameter[0].name = #"operation-type"
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "Must be $create-patient"
* parameter[0].type = #string
* parameter[1].name = #"patient"
* parameter[1].use = #in
* parameter[1].min = 1
* parameter[1].max = "1"
* parameter[1].type = #Patient
* parameter[1].targetProfile = "http://hl7.org.nz/fhir/StructureDefinition/CreateNhiPatient"
* parameter[1].documentation = "Patient demographic information"

