Instance: create3-errors
InstanceOf: CreateNhiPatient
Description: "example patient parameter for $create-patient request, errors:name must contain either a given or family name(EM02101),no primary address(EM02201), birthdate < 1900 (EM07212), deceasedDateTime < birthdate(EM07215), Baby of name source not NPRF (EM07225)"
Usage: #example

* name[0].extension[preferred].valueBoolean = true
// no family ot given name - violates EM02101
//* name[0].given = "ChewyBakA"
* name[0].extension[information-source].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#GREG "Proof not Sighted"
* name[0].use = #temp
* name[0].extension[nhi-name-use-extra].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/nhi-name-use-extra-code#BABYOF

* birthDate = "1899-06-05"
* birthDate.extension[information-source].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#HL7 "HL7 applied"

* extension[nz-ethnicity].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#21111 "Māori"
* extension[birth-place].extension[country].valueCodeableConcept.coding = urn:iso:std:iso:3166#NZ "New Zealand"
* extension[birth-place].extension[source].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#BRCT "Birth Certificate"

* extension[nz-citizenship].extension[source].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/information-source-code#BRCT "Birth Certificate"
* extension[nz-citizenship].extension[status].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/nz-citizenship-status-code#yes "Yes"

* gender = #male


* address[0].id = "2"
* address[=].extension[nz-address-id].valueString = "12345"
* address[=].extension[suburb].valueString = "Awapuni"
* address[=].use = #home
* address[=].type = #postal
* address[=].line = "74 Chancellor Street"
* address[=].city = "Palmerston North"
* address[=].postalCode = "4412"
* address[=].country = "NZ"

//deceasedDateTime earlier than birthdate - violates EM07215
* deceasedDateTime = "1888-10-18"
* deceasedDateTime.extension.valueCodeableConcept.coding = $information-source-code#DREG "Death Register"
