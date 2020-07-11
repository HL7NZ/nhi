
Extension: DomicileCode
Id: domicile-code
Description: "The domicile code. Derived from the address "

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* ^context.type = #element
* ^context.expression = "Address"


* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/domicile-code (preferred)

/*
* extension 0..0
* value[x] only CodeableConcept 
* ValueCodeableConcept from https://standards.digital.health.nz/vs/domicileCode (preferred)

*/