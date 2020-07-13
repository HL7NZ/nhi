Extension: NZResidencyStatus
Id: nz-residency-status
Description: "NZ Residency status"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-residency-status"
* ^context.type = #element
* ^context.expression = "Patient"

* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/nz-residency-status (preferred)

