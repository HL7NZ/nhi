Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code
Alias: $information-source-code = https://standards.digital.health.nz/ns/information-source-code
Alias: $nz-citizenship-status-code = https://standards.digital.health.nz/ns/nz-citizenship-status-code
Alias: $dhb-code = https://standards.digital.health.nz/ns/dhb-code
Alias: $domicile-code = https://standards.digital.health.nz/ns/domicile-code

Instance: ZAA0792
InstanceOf: Patient
Description: "Example Patient dormant identifier, two addresses"
Usage: #example
* meta.versionId = "3384084"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = $ethnic-group-level-4-code#11111 "New Zealand European"
* extension[=].valueCodeableConcept.text = "New Zealand European"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"
* extension[=].extension[0].url = "source"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].extension[=].valueCodeableConcept.coding = $information-source-code#NPRF "Proof not Sighted"
* extension[=].extension[=].valueCodeableConcept.text = "Proof not Sighted"
* extension[=].extension[+].url = "status"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.1.0"
* extension[=].extension[=].valueCodeableConcept.coding = $nz-citizenship-status-code#unknown "The citizenship status is unknown"
* extension[=].extension[=].valueCodeableConcept.text = "The citizenship status is unknown"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/dhb"
* extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].valueCodeableConcept.coding = $dhb-code#G00013-C "Waitemata District Health Board"
* extension[=].valueCodeableConcept.text = "Waitemata District Health Board"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].value = "ZAA0792"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #old
* identifier[=].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].value = "ZAA0806"
* identifier[=].assigner = Reference(Organization/G00001-G)
* name.id = "22"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name.extension.valueBoolean = true
* name.family = "Matariki"
* name.given = "Jamie"
* gender = #female
* birthDate = "1985-06-02"
* birthDate.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* birthDate.extension.valueCodeableConcept.coding.version = "1.0.0"
* birthDate.extension.valueCodeableConcept.coding = $information-source-code#HL7 "HL7 applied"
* birthDate.extension.valueCodeableConcept.text = "HL7 applied"
* address[0].id = "20"
* address[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id"
* address[=].extension[=].valueString = "131749"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address[=].extension[=].valueCodeableConcept = $domicile-code#0230 "Target Road"
* address[=].extension[=].valueCodeableConcept.text = "Target Road"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "Totara Vale"
* address[=].use = #home
* address[=].type = #physical
* address[=].line = "13 Tacitus Place"
* address[=].city = "Auckland"
* address[=].postalCode = "0629"
* address[=].country = "NZ"
* address[+].id = "18"
* address[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id"
* address[=].extension[=].valueString = "3571798"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address[=].extension[=].valueCodeableConcept = $domicile-code#0504 "Auckland Harbourside"
* address[=].extension[=].valueCodeableConcept.text = "Auckland Harbourside"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "Auckland Central"
* address[=].use = #home
* address[=].type = #postal
* address[=].line = "147 Quay Street"
* address[=].city = "Auckland"
* address[=].postalCode = "1010"
* address[=].country = "NZ"
