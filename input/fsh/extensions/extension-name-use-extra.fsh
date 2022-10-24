Extension: NameUseExtra
Id: name-use-extra
Description: "Additional name use codes for NHI names"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/name-use-extra"

//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only CodeableConcept
* valueCodeableConcept from $nhi-name-use-extra-vs
