
ValueSet: AdditionalGender
Id:  nz-additional-gender-code
Title: "Gender codes including Indeterminate"
Description: "Additional genders for Patient"

* ^url = https://standards.digital.health.nz/fhir/ValueSet/nz-additional-gender-code

//all the current gender ones
* codes from system http://hl7.org/fhir/administrative-gender

//todo - is there a SNOMED code we can use?
* codes from system https://standards.digital.health.nz/ns/nz-additional-gender-code

CodeSystem: AdditionalGender
Id: nz-additional-gender-code
Title: "Patient citizenship status"
Description: "Additional genders for Patient"

* ^url = https://standards.digital.health.nz/ns/nz-additional-gender-code

* #indeterminate "Indeterminate" "When the gender cannot be determined"


