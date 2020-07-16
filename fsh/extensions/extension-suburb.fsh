Extension: Suburb
Id: suburb
Description: "The suburb of the address. This is not the same as 'district' or 'state."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Address"

* extension 0..0
* value[x] only string