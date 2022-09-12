Instance: example
InstanceOf: Parameters
Description: "Example $Match (Find NHI) Request"
Usage: #example
* parameter[0].name = "resource"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.meta.versionId = "111"
* parameter[=].resource.name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* parameter[=].resource.name.extension.valueBoolean = true
* parameter[=].resource.name.use = #nickname
* parameter[=].resource.name.text = "TEST-AQURE, ROBERT"
* parameter[=].resource.name.family = "TEST-AQURE"
* parameter[=].resource.name.given = "ROBERT"
* parameter[=].resource.gender = #male
* parameter[=].resource.birthDate = "1985-06-15"
* parameter[=].resource.address.use = #home
* parameter[=].resource.address.type = #physical
* parameter[=].resource.address.line[0] = "24 Warren Avenue"
* parameter[=].resource.address.line[+] = "Three Kings"
* parameter[=].resource.address.district = "Auckland 1042"
* parameter[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* parameter[=].extension[=].valueCodeableConcept.coding.version = "2.0"
* parameter[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#21111 "Māori"
* parameter[=].extension[=].valueCodeableConcept.text = "Māori"
* parameter[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/birth-place"
* parameter[=].extension[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/birth-place#country"
* parameter[=].extension[=].extension[=].valueCodeableConcept.coding.version = "2013"
* parameter[=].extension[=].extension[=].valueCodeableConcept.coding = urn:iso:std:iso:3166#AU "Australia"
* parameter[=].extension[=].extension[=].valueCodeableConcept.text = "Australia"
* parameter[=].extension[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/birth-place#placeofbirth"
* parameter[=].extension[=].extension[=].valueString = "Sydney"
* parameter[+].name = "count"
* parameter[=].valueInteger = 1
* parameter[+].name = "onlyCertainMatches"
* parameter[=].valueBoolean = false
