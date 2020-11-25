Extension: NZResidencyStatus
Id: nz-residency-status
Description: "NZ Residency status"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-residency-status"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Patient"

* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/nz-residency-status-code (preferred)

