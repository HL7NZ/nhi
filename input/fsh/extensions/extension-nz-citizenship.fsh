Extension: NZCitizenshipStatus
Id: nz-citizenship
Description: "NZ Citizenship status"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Patient"

* extension contains
    status 0..1 and
    source 0..1     //todo - remove from here and add to NHI

* extension[status] ^definition = "NZ Citizenship Status"
* extension[status].value[x] only CodeableConcept
* extension[status].valueCodeableConcept from $citizenship-status-vs (preferred)

* extension[source] ^definition = "The source of information concerning the NZ citizenship"
* extension[source].value[x] only CodeableConcept
* extension[source].valueCodeableConcept from $nz-citizenship-information-source-vs (required)


//* value[x] only CodeableConcept
//* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/nz-residency-status-code (preferred)

