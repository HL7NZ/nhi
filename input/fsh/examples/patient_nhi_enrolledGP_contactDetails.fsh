Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code
Alias: $information-source-code = https://standards.digital.health.nz/ns/information-source-code
Alias: $nz-citizenship-status-code = https://standards.digital.health.nz/ns/nz-citizenship-status-code
Alias: $nhi-name-use-extra-code = https://standards.digital.health.nz/ns/nhi-name-use-extra-code
Alias: $address-not-validated-reason-code = https://standards.digital.health.nz/ns/address-not-validated-reason-code
Alias: $domicile-code = https://standards.digital.health.nz/ns/domicile-code

Instance: ZKC4633
InstanceOf: Patient
Description: "Example Patient - with enrolled GP and contact details"
Usage: #example
* meta.versionId = "3384979"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
* contained = Inline-Instance-for-ZKC4633-1
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
* extension[=].extension[=].valueCodeableConcept.coding = $nz-citizenship-status-code#yes "Yes"
* extension[=].extension[=].valueCodeableConcept.text = "Yes"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZKC4633"
* identifier.assigner = Reference(Organization/G00001-G)
* name[0].id = "10"
* name[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* name[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* name[=].extension[=].valueCodeableConcept.coding = $information-source-code#NPRF "Proof not Sighted"
* name[=].extension[=].valueCodeableConcept.text = "Proof not Sighted"
* name[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name[=].extension[=].valueBoolean = false
* name[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/name-use-extra"
* name[=].extension[=].valueCodeableConcept = $nhi-name-use-extra-code#BABYOF "babyof"
* name[=].use = #temp
* name[=].family = "Aufderhar"
* name[=].given = "Baby of Jane"
* name[+].id = "13"
* name[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name[=].extension.valueBoolean = true
* name[=].family = "Aufderhar"
* name[=].given[0] = "Rickey"
* name[=].given[+] = "Amalia"
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
* birthDate.extension.valueCodeableConcept.coding = $information-source-code#NPRF "Proof not Sighted"
* birthDate.extension.valueCodeableConcept.text = "Proof not Sighted"
* address.id = "24"
* address.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/not-validated-address-reason"
* address.extension[=].valueCodeableConcept.coding.version = "1.1"
* address.extension[=].valueCodeableConcept.coding = $address-not-validated-reason-code#OSEA "Overseas Address"
* address.extension[=].valueCodeableConcept.text = "Overseas Address"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address.extension[=].valueCodeableConcept = $domicile-code#9999 "Overseas resident"
* address.extension[=].valueCodeableConcept.text = "Overseas resident"
* address.use = #home
* address.type = #physical
* address.line = "Other Road"
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
