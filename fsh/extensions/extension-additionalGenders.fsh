Extension: AdditionalGender
Id: nz-additional-gender
Description: "Additional genders for Patient"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-additional-gender"

* ^context.type = #element
* ^context.expression = "Patient.gender"        

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/nz-additional-gender (required)


ValueSet: AdditionalGender
Id:  nz-additional-gender
Title: "Patient citizenship status"
Description: "Additional genders for Patient"

* ^url = https://standards.digital.health.nz/fhir/ValueSet/nz-additional-gender

//all the current gender ones
* codes from system http://hl7.org/fhir/ValueSet/administrative-gender

//todo - is there a SNOMED code we can use?
* codes from system https://standards.digital.health.nz/ns/nz-additional-gender



CodeSystem: AdditionalGender
Id: nz-additional-gender
Title: "Patient citizenship status"
Description: "Additional genders for Patient"

* ^url = https://standards.digital.health.nz/ns/nz-additional-gender

* #I "Indeterminate"


