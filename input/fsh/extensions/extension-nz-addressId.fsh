Extension: NzAddressId
Id: address-id
Description: "Uniquely identifies this address as a physical entity. Will remain constant over time even if address administrative data such as DPID change"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Address"

* extension 0..0
* value[x] only string