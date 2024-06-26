Alias: $ethnic-group-level-4-code = https://standards.digital.health.nz/ns/ethnic-group-level-4-code
Alias: $information-source-code = https://standards.digital.health.nz/ns/information-source-code
Alias: $nz-citizenship-status-code = https://standards.digital.health.nz/ns/nz-citizenship-status-code
Alias: $address-not-validated-reason-code = https://standards.digital.health.nz/ns/address-not-validated-reason-code
Alias: $domicile-code = https://standards.digital.health.nz/ns/domicile-code

Instance: ZAT2348
InstanceOf: Patient
Description: "Example Patient - deceased"
Usage: #example
* meta.versionId = "3368229"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
* contained = Inline-Instance-for-ZAT2348-1
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = $ethnic-group-level-4-code#11111 "New Zealand European"
* extension[=].valueCodeableConcept.text = "New Zealand European"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = $ethnic-group-level-4-code#12939 "Spanish"
* extension[=].valueCodeableConcept.text = "Spanish"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"
* extension[=].extension[0].url = "source"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].extension[=].valueCodeableConcept.coding = $information-source-code#PPRT "Passport"
* extension[=].extension[=].valueCodeableConcept.text = "Passport"
* extension[=].extension[+].url = "status"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.1.0"
* extension[=].extension[=].valueCodeableConcept.coding = $nz-citizenship-status-code#no "No"
* extension[=].extension[=].valueCodeableConcept.text = "No"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZAT2348"
* identifier.assigner = Reference(Organization/G00001-G)
* name[0].id = "11"
* name[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* name[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* name[=].extension[=].valueCodeableConcept.coding = $information-source-code#NPRF "Proof not Sighted"
* name[=].extension[=].valueCodeableConcept.text = "Proof not Sighted"
* name[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name[=].extension[=].valueBoolean = false
* name[=].family = "Smith-Martin"
* name[=].given = "Laura"
* name[=].prefix = "MS"
* name[+].id = "13"
* name[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* name[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* name[=].extension[=].valueCodeableConcept.coding = $information-source-code#NPRF "Proof not Sighted"
* name[=].extension[=].valueCodeableConcept.text = "Proof not Sighted"
* name[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name[=].extension[=].valueBoolean = false
* name[=].family = "Othername"
* name[=].given = "Rose"
* name[=].prefix = "MRS"
* name[+].id = "18"
* name[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name[=].extension.valueBoolean = true
* name[=].family = "MARTIN"
* name[=].given[0] = "LAURA"
* name[=].given[+] = "ROSE"
* name[+].id = "22"
* name[=].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name[=].extension.valueBoolean = false
* name[=].family = "Moh"
* name[=].given = "Petal"
* gender = #female
* birthDate = "1970-07-14"
* birthDate.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* birthDate.extension.valueCodeableConcept.coding.version = "1.0.0"
* birthDate.extension.valueCodeableConcept.coding = $information-source-code#NPRF "Proof not Sighted"
* birthDate.extension.valueCodeableConcept.text = "Proof not Sighted"
* deceasedDateTime = "2016-10-18"
* deceasedDateTime.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* deceasedDateTime.extension.valueCodeableConcept.coding.version = "1.0.0"
* deceasedDateTime.extension.valueCodeableConcept.coding = $information-source-code#DREG "Death Register"
* deceasedDateTime.extension.valueCodeableConcept.text = "Death Register"
* address.id = "27"
* address.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/not-validated-address-reason"
* address.extension[=].valueCodeableConcept.coding.version = "1.1"
* address.extension[=].valueCodeableConcept.coding = $address-not-validated-reason-code#NFAB "No Fixed Abode"
* address.extension[=].valueCodeableConcept.text = "No Fixed Abode"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address.extension[=].valueCodeableConcept = $domicile-code#D091 "Capital and Coast District Health Board"
* address.extension[=].valueCodeableConcept.text = "Capital and Coast District Health Board"
* address.use = #home
* address.type = #physical
* address.line = "NO FIXED ABODE"
* generalPractitioner = Reference(20006579)

Instance: Inline-Instance-for-ZAT2348-1
InstanceOf: PractitionerRole
Usage: #inline
* id = "20006579"
* period.start = "2019-10-30T00:00:00+13:00"
* period.end = "2022-10-30T00:00:00+13:00"
* organization = Reference(Organization/G08550-C)
