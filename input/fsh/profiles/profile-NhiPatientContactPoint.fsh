Alias: $isVerified = http://hl7.org.nz/fhir/StructureDefinition/isVerified
Alias: $isShared = http://hl7.org.nz/fhir/StructureDefinition/isShared
Alias: $isPrivate = http://hl7.org.nz/fhir/StructureDefinition/isPrivate
Alias: $context = http://hl7.org.nz/fhir/StructureDefinition/context
Alias: $lastUpdatedDate = http://hl7.org.nz/fhir/StructureDefinition/lastUpdatedDate

Profile: NhiContactPoint

Parent:  NzContactPoint  

Id: NhiContactPoint
Title: "NHI ContactPoint"
Description: "Additional attributes for managing patient contact information"


* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nhi-contact-point"

//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element

* extension contains
    $isVerified named isVerified 0..1 and
    $isShared named isShared 0..1 and
    $isPrivate named isPrivate 0..1 and
    $context named context 0..1 and
    $lastUpdatedDate named lastUpdatedDate 0..1 
    

