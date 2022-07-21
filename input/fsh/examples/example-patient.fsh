Instance:   patient2
InstanceOf: NhiPatient
Usage: #example

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Test patient 2</div>"
* text.status = #additional

//name. The source of the name was a NZ Visa
* name.family = "Doe"
* name.given = "John"
* name.given[1] = "Albertus"
* name.extension[preferred].valueBoolean = true

* deceasedDateTime = "2020-01-01"
* deceasedDateTime.extension[Information_source].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/ns/information-source-code"


* address[0].line[0] = "my house"
* address[0].type = #physical
* address[0].extension[isPrimaryAddress].valueBoolean = true

* address[0].extension[notValidatedAddressReason].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/ns/address-not-validated-reason-code"
* address[0].extension[notValidatedAddressReason].valueCodeableConcept.coding.code = #OSEA

* gender = #male
* gender.extension[originalText].valueString = "Bloke"

//Birth date, verified by passport
* birthDate = "1989-12-12"


* deceasedDateTime = "2020-01-01"

//the current NHI
* identifier[0].use = #official
* identifier[0].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[0].value = "WER4568"

//a dormant (replaced)  NHI
* identifier[1].use = #old
* identifier[1].system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier[1].value = "ABC1234"


//birth country New Zealand
* extension[birthPlace].extension[country].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[birthPlace].extension[country].valueCodeableConcept.coding.code = #NZ
* extension[birthPlace].extension[country].valueCodeableConcept.coding.display = "New Zealand"

//citizenship
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/ns/nz-citizenship-status-code"
* extension[nzCitizen].extension[status].valueCodeableConcept.coding.code =  #yes
* extension[nzCitizen].extension[source].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/ns/information-source-code"
* extension[nzCitizen].extension[source].valueCodeableConcept.coding.code = #DIA