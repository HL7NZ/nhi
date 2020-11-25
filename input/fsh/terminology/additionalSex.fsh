
ValueSet: AdditionalSex
Id:  nz-additional-sex-code
Title: "Gender codes including Indeterminate"
Description: "Additional sex values for Patient"

* ^url = https://standards.digital.health.nz/fhir/ValueSet/nz-additional-sex-code

//all the current gender ones
* codes from system http://hl7.org/fhir/administrative-gender

//todo - is there a SNOMED code we can use?
* codes from system https://standards.digital.health.nz/ns/nz-additional-sex-code

CodeSystem: AdditionalSex
Id: nz-additional-sex-code
Title: "Patient citizenship status"
Description: "Additional sex values for Patient"

* ^url = https://standards.digital.health.nz/ns/nz-additional-sex-code

* #indeterminate "Indeterminate" "When the sex cannot be determined"


