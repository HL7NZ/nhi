Instance: ZAT2348
InstanceOf: Patient
Description: "Example Patient deceased"
Usage: #example
* meta.versionId = "3276365"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* extension[=].valueCodeableConcept.text = "New Zealand European"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#12939 "Spanish"
* extension[=].valueCodeableConcept.text = "Spanish"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/dhb"
* extension[=].valueCodeableConcept.coding.version = "1.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/dhb-code#G00036-D "Capital & Coast"
* extension[=].valueCodeableConcept.text = "Capital & Coast"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZAT2348"
* identifier.assigner = Reference(Organization/G00001-G)
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name[=].extension.valueBoolean = false
* name[=].family = "Moh"
* name[=].given = "Petal"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name[=].extension.valueBoolean = true
* name[=].family = "MARTIN"
* name[=].given[0] = "LAURA"
* name[=].given[+] = "ROSE"
* name[+].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* name[=].extension[=].valueCodeableConcept.coding.version = "1.0"
* name[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#NPRF "Proof not Sighted"
* name[=].extension[=].valueCodeableConcept.text = "Proof not Sighted"
* name[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name[=].extension[=].valueBoolean = false
* name[=].family = "Othername"
* name[=].given = "Rose"
* name[=].prefix = "mrs"
* name[+].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* name[=].extension[=].valueCodeableConcept.coding.version = "1.0"
* name[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#NPRF "Proof not Sighted"
* name[=].extension[=].valueCodeableConcept.text = "Proof not Sighted"
* name[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name[=].extension[=].valueBoolean = false
* name[=].family = "Smith-Martin"
* name[=].given = "Laura"
* name[=].prefix = "ms"
* gender = #female
* birthDate = "1970-07-14"
* birthDate.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* birthDate.extension.valueCodeableConcept.coding.version = "1.0"
* birthDate.extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#NPRF "Proof not Sighted"
* birthDate.extension.valueCodeableConcept.text = "Proof not Sighted"
* deceasedDateTime = "2016-10-18"
* address.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/is-primary-address"
* address.extension[=].valueBoolean = true
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address.extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/domicile-code#2077 "Thorndon - Tinakori Road"
* address.extension[=].valueCodeableConcept.text = "Thorndon - Tinakori Road"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address.extension[=].valueString = "Thorndon"
* address.use = #home
* address.type = #physical
* address.line = "133 Molesworth Street"
* address.city = "Wellington"
* address.postalCode = "6011"