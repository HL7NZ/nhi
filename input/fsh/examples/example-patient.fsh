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

* address[0].line[0] = "my house"
* address[0].type = #physical
* address[0].extension[isPrimaryAddress].valueBoolean = true

* gender = #male
* gender.extension[originalText].valueString = "Bloke"

//Birth date, verified by passport
* birthDate = "1989-12-12"


* deceasedDateTime = "2020-01-01"

//the current NHI
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/id/nhi"
* identifier.value = "WER4568"

//a dormant (replaced)  NHI
* identifier.use = #old
* identifier.system = "https://standards.digital.health.nz/id/nhi"
* identifier.value = "ABC1234"


//birth country New Zealand
* extension[birthPlace].extension[country].valueCodeableConcept.coding.system = "urn:iso:std:iso:3166"
* extension[birthPlace].extension[country].valueCodeableConcept.coding.code = #NZ
* extension[birthPlace].extension[country].valueCodeableConcept.coding.display = "New Zealand"

