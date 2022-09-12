Instance: Example $Match validate request
InstanceOf: Parameters
Description: "Example $Match (Validate) Request"
Usage: #example
* parameter[0].name = "resource"
* parameter[=].resource.resourceType = "Patient"
* parameter[=].resource.identifier.use = #official
* parameter[=].resource.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* parameter[=].resource.identifier.value = "ZJK9604"
* parameter[=].resource.identifier.assigner.reference = "Organization/G00001-G"
* parameter[=].resource.id = "ZJK9604"
* parameter[=].resource.name.family = "Marblemaw"
* parameter[=].resource.name.given = "Braylon"
* parameter[=].resource.birthDate = "1979-06-10"
* parameter[=].resource.address.use = #home
* parameter[=].resource.address.type = #physical
* parameter[=].resource.address.line[0] = "PO Box 525"
* parameter[=].resource.address.line[+] = "Whanganui 4541"
* parameter[+].name = "onlyCertainMatches"
* parameter[=].valueBoolean = true
