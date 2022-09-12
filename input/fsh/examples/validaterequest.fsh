Instance: example
InstanceOf: Parameters
Description: "Example $Match (Validate)"
Usage: #example
* parameter[0].name = "resource"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.identifier.use = #official
* parameter[=].resource.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* parameter[=].resource.identifier.value = "ZAB7369"
* parameter[=].resource.identifier.assigner.reference = "Organization/G00001-G"
* parameter[=].resource.name.family = "EF-OneFourThreeEight"
* parameter[=].resource.name.given[0] = "Testing"
* parameter[=].resource.name.given[+] = "CaseTwo-WithMidnight"
* parameter[=].resource.gender = #female
* parameter[=].resource.birthDate = "2015-12-17"
* parameter[+].name = "onlyCertainMatches"
* parameter[=].valueBoolean = true
