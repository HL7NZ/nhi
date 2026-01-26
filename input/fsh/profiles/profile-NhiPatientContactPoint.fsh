Alias: $isVerified = http://hl7.org.nz/fhir/StructureDefinition/isVerified
Alias: $isShared = http://hl7.org.nz/fhir/StructureDefinition/isShared
Alias: $isPrivate = http://hl7.org.nz/fhir/StructureDefinition/isPrivate
Alias: $context = http://hl7.org.nz/fhir/StructureDefinition/context
Alias: $lastUpdatedDate = http://hl7.org.nz/fhir/StructureDefinition/lastUpdatedDate

//* !! temp
Alias: $isPrimaryAddress = http://hl7.org.nz/fhir/StructureDefinition/is-primary-address

Profile: NhiContactPoint

Parent:  NzContactPoint  

Id: NhiContactPoint
Title: "NHI ContactPoint"
Description: "Additional attributes for managing patient contact information"


* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nhi-contact-point"

//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
//* ^context.type = #element

* extension contains
   $nzAddressDerived named nz-address-derived 0..1

