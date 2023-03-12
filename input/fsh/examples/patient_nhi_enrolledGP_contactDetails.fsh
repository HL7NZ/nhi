Instance: ZKC4633
InstanceOf: Patient
Description: "Example Patient - with enrolled GP and contact details"
Usage: #example
* meta.versionId = "3368127"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
* contained = Inline-Instance-for-ZKC4633-1
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* extension[=].valueCodeableConcept.text = "New Zealand European"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"
* extension[=].extension[0].url = "source"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#NPRF "Proof not Sighted"
* extension[=].extension[=].valueCodeableConcept.text = "Proof not Sighted"
* extension[=].extension[+].url = "status"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/nz-citizenship-status-code#yes "Yes"
* extension[=].extension[=].valueCodeableConcept.text = "Yes"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-residency"
* extension[=].extension[0].url = "source"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#MIGR "Migrated"
* extension[=].extension[=].valueCodeableConcept.text = "Migrated"
* extension[=].extension[+].url = "status"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/nz-residency-code#no "Not a Permanent Resident"
* extension[=].extension[=].valueCodeableConcept.text = "Not a Permanent Resident"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/dhb"
* extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/dhb-code#G00036-D "Capital and Coast District Health Board"
* extension[=].valueCodeableConcept.text = "Capital and Coast District Health Board"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZKC4633"
* identifier.assigner = Reference(Organization/G00001-G)
* name.id = "6"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name.extension.valueBoolean = true
* name.family = "Aufderhar"
* name.given[0] = "Rickey"
* name.given[+] = "Amalia"
* telecom[0].system = #email
* telecom[=].value = "test.contact@testContatc.com"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "0275151510"
* telecom[=].use = #mobile
* telecom[+].system = #phone
* telecom[=].value = "045882334"
* telecom[=].use = #home
* gender = #female
* birthDate = "2021-12-29"
* birthDate.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* birthDate.extension.valueCodeableConcept.coding.version = "1.0.0"
* birthDate.extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#NPRF "Proof not Sighted"
* birthDate.extension.valueCodeableConcept.text = "Proof not Sighted"
* address.id = "1"
* address.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id"
* address.extension[=].valueString = "1112139"
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
* address.country = "NZ"
* generalPractitioner = Reference(20014909)

Instance: Inline-Instance-for-ZKC4633-1
InstanceOf: PractitionerRole
Usage: #inline
* id = "20014909"
* period.start = "2023-02-21T00:00:00+13:00"
* period.end = "2026-02-21T00:00:00+13:00"
* practitioner = Reference(Practitioner/99ZZZS) "TestOne Prefix-Test"
* organization = Reference(Organization/G00001-G) "Ministry of Health"
* location = Reference(Location/FZZ999-B) "Live Facilty"
