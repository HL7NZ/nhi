Extension: NZResidencyStatus
Id: nz-residency
Description: "NZ Residency status"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-residency"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Patient"

* extension contains
    status 0..1 and
    source 0..1     //todo - remove from here and add to NHI

* extension[status] ^definition = "Residency Status"
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/nz-residency-status-code (preferred)

* extension[source] ^definition = "The source of information concerning the residency"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/information-source-code (required)


//* value[x] only CodeableConcept
//* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/nz-residency-status-code (preferred)

