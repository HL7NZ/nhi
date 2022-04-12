Instance: patient-name-babyof
InstanceOf: Patient
Description: "Example of babyof extension"
Usage: #example

* name[+].use = #temp
* name[=].use.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/name-use-babyof"
* name[=].use.extension[=].valueString = "Jane Smith"

