Extension: Name_use_babyof
Id: babyof
Title: "Baby of (mother's name)"
Description: "When the Patient.Name.use value is 'temp', this extension value  can  be used to hold the mother's name until the baby has been given an official name"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/name-use-babyof"

* ^version = "1.0.0"
* ^status = #active
* ^date = "2020-07-20"
* ^publisher = "MoH"


* ^context[0].type = #element
* ^context[0].expression = "HumanName.use"

* value[x] only string