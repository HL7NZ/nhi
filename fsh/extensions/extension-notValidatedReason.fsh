Extension: NotValidatedAddressReason
Id: notValidatedAddressReason
Description: "The reason why the address has not been validated"


* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/address-not-validated-reason-code (preferred)