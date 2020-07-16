Extension: Patient_iwi
Id: patient-iwi
Description: "Persons Iwi affiliation"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/patient-iwi"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Patient"

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/iwi-code (preferred)