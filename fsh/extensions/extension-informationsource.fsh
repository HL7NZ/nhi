Extension: Informationsource
Id: information-source
Description: "The source of the information. Used paricularly in the NHI. Note this not the person but rather than it came from a passport for example"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Patient.birthDate"    

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/information-source-code (preferred)