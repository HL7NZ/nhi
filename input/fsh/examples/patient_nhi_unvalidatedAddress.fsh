Instance: ZAA0792
InstanceOf: Patient
Description: "Example Patient - with unvalidated 'overseas' residential address"
Usage: #example
* meta.versionId = "3368251"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* extension[=].valueCodeableConcept.text = "New Zealand European"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship"
* extension[=].extension.url = "status"
* extension[=].extension.valueCodeableConcept.coding.version = "1.0.0"
* extension[=].extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/nz-citizenship-status-code#unknown "The citizenship status is unknown"
* extension[=].extension.valueCodeableConcept.text = "The citizenship status is unknown"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-residency"
* extension[=].extension[0].url = "source"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#HL7 "HL7 applied"
* extension[=].extension[=].valueCodeableConcept.text = "HL7 applied"
* extension[=].extension[+].url = "status"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/nz-residency-code#yes "Permanent Resident"
* extension[=].extension[=].valueCodeableConcept.text = "Permanent Resident"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].value = "ZAA0792"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #old
* identifier[=].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[=].value = "ZAA0806"
* identifier[=].assigner = Reference(Organization/G00001-G)
* name.id = "5"
* name.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
* name.extension.valueBoolean = true
* name.family = "NEWMUM"
* name.given = "BABY OF TESTING"
* gender = #female
* birthDate = "2015-09-09"
* birthDate.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/information-source"
* birthDate.extension.valueCodeableConcept.coding.version = "1.0.0"
* birthDate.extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#HL7 "HL7 applied"
* birthDate.extension.valueCodeableConcept.text = "HL7 applied"
* address[0].id = "17"
* address[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/not-validated-address-reason"
* address[=].extension[=].valueCodeableConcept.coding.version = "1.1"
* address[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/address-not-validated-reason-code#OSEA "Overseas Address"
* address[=].extension[=].valueCodeableConcept.text = "Overseas Address"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "Moutsamoudou"
* address[=].use = #home
* address[=].type = #physical
* address[=].line = "Rue Mtsangani"
* address[=].city = "Bandrele "
* address[=].postalCode = "0606"
* address[+].id = "18"
* address[=].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id"
* address[=].extension[=].valueString = "3571798"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address[=].extension[=].valueCodeableConcept = https://standards.digital.health.nz/ns/domicile-code#0504 "Auckland Harbourside"
* address[=].extension[=].valueCodeableConcept.text = "Auckland Harbourside"
* address[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address[=].extension[=].valueString = "Auckland Central"
* address[=].use = #home
* address[=].type = #postal
* address[=].line = "147 Quay Street"
* address[=].city = "Auckland"
* address[=].postalCode = "1010"
* address[=].country = "NZ"
