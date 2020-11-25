Extension: NhiAddressDerived
Id: nhi-address-derived
Description: "Address elements that are directly derived from the actual address"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nhi-address-derived"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Address"

* extension contains
    depCentile 0..1 and
    depQuintile 0..1 and
    SAID 0..1 and
    meshBlock 0..1 

* extension[depCentile].value[x] only decimal
* extension[depCentile] ^short = "The deprivation centile"

* extension[depQuintile].value[x] only decimal
* extension[depQuintile] ^short = "The deprivation quintile"

* extension[SAID].value[x] only decimal
* extension[SAID] ^short = "An interrnal id for this address"

* extension[meshBlock].value[x] only decimal
* extension[meshBlock] ^short = "The meshblock for this address"