Instance: create3-no-primary-address
InstanceOf: CreateNhiPatient
Description: "example patient parameter for $create-patient request"
Usage: #example

* name[0].extension[preferred].valueBoolean = true
* name[0].given = "ChewyBakA"
* name[0].extension[information-source].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#NPRF "Proof not Sighted"
* name[0].use = #temp
* name[0].extension[nhi-name-use-extra].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/nhi-name-use-extra-code#BABYOF

* birthDate = "1972-06-05"
* birthDate.extension[information-source].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#HL7 "HL7 applied"

* extension[nz-ethnicity].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#21111 "Māori"
* extension[birth-place].extension[country].valueCodeableConcept.coding = urn:iso:std:iso:3166#NZ "New Zealand"
* extension[birth-place].extension[source].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#BRCT "Birth Certificate"

* extension[nz-citizenship].extension[source].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#BRCT "Birth Certificate"
* extension[nz-citizenship].extension[status].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/nz-citizenship-status-code#yes "Yes"

* gender = #male

* address[0].extension[nz-address-id].valueString = "1199146"
* address[=].extension[suburb].valueString = "Awapuni"
* address[=].use = #home
* address[=].type = #physical
* address[=].line = "24 Anglesey Place"
* address[=].city = "Palmerston North"
* address[=].postalCode = "4412"
* address[=].country = "NZ"
