Instance: ZAT2534
InstanceOf: Patient
Description: "Example Patient with dormant"
Usage: #example
* meta.versionId = "2847686"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension.valueCodeableConcept.coding.version = "2.0"
* extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#52100 "Latin American / Hispanic NFD"
* extension.valueCodeableConcept.text = "Latin American / Hispanic NFD"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].value = "ZAT2534"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #old
* identifier[=].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].value = "ZAT2518"
* identifier[=].assigner = Reference(Organization/G00001-G)
* name.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* name.extension[=].valueCodeableConcept.coding.version = "1.0"
* name.extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#NPRF "Proof not Sighted"
* name.extension[=].valueCodeableConcept.text = "Proof not Sighted"
* name.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name.extension[=].valueBoolean = true
* name.family = "Washington"
* name.given = "Irving"
* gender = #male
* birthDate = "1914-01-01"
* birthDate.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* birthDate.extension.valueCodeableConcept.coding.version = "1.0"
* birthDate.extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#NPRF "Proof not Sighted"
* birthDate.extension.valueCodeableConcept.text = "Proof not Sighted"
* address.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/not-validated-address-reason"
* address.extension[=].valueCodeableConcept.coding.version = "1.1"
* address.extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/address-not-validated-reason-code#NFAB "No Fixed Abode"
* address.extension[=].valueCodeableConcept.text = "No Fixed Abode"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/is-primary-address"
* address.extension[=].valueBoolean = true
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address.extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/domicile-code#2078 "Lambton"
* address.extension[=].valueCodeableConcept.text = "Lambton"
* address.use = #home
* address.type = #physical
* address.line = "0 Lambton Quay"
* address.city = "Wellington"
* address.postalCode = "6011"
