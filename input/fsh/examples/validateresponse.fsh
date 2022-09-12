Instance: undefined
InstanceOf: Bundle
Description: "Example $Match (Validate) Response"
Usage: #example
* type = #searchset
* entry.resource = ZJK9604
* entry.search.score = 97

Instance: ZJK9604
InstanceOf: Patient
Usage: #inline
* meta.versionId = "-1"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* identifier.value = "ZJK9604"
* identifier.assigner = Reference(Organization/G00001-G)
