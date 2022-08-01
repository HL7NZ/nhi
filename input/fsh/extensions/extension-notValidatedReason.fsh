Extension: NotValidatedAddressReason
Id: not-validated-address-reason
Description: "The reason why the address has not been validated"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/not-validated-address-reason"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Address"

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/nhi-address-not-validated-reason-code (preferred)