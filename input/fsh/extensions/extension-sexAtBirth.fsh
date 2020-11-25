Extension: SexAtBirth
Id: sex-at-birth
Description: "The persons sex when born. Is considered to be immutable "

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/sex-at-birth"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Patient"        

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/nz-additional-sex-code (required)