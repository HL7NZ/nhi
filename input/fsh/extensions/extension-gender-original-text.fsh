Extension: OriginalText
Id: gender-original-text
Description: "The text that was provided for Gender as it is uncoded"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/gender-original-text"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Patient.gender"

* extension 0..0
* value[x] only string


