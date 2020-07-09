Extension: BuildingName
Id: building-name
Description: "Used on an adddress datatype when a building name is needed"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/building-name"

* ^context.type = #element
* ^context.expression = "Address"

* extension 0..0
* value[x] only string