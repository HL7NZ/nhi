Extension: ESAMId
Id: esam-id
Description: " identifier from the eSAM address service"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/esam-id"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Address"

* extension 0..0
* value[x] only string