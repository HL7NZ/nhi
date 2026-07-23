Alias: $isVerified = http://hl7.org.nz/fhir/StructureDefinition/isVerified
Alias: $isShared = http://hl7.org.nz/fhir/StructureDefinition/isShared
Alias: $isPrivate = http://hl7.org.nz/fhir/StructureDefinition/isPrivate
Alias: $context = http://hl7.org.nz/fhir/StructureDefinition/context
Alias: $lastUpdatedDate = http://hl7.org.nz/fhir/StructureDefinition/lastUpdatedDate

Alias: $nzAddressDerived = http://hl7.org.nz/fhir/StructureDefinition/nhi-address-derived

Profile: NhiContactPoint

Parent:  NzContactPoint  

Id: NhiContactPoint
Title: "NHI ContactPoint"
Description: "Additional attributes for managing patient contact information"


* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nhi-contact-point"

//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
//* ^context.type = #element
* extension contains

   $isVerified named isVerified 0..1 and
   $isShared named isShared 0..1 and
   $isPrivate named isPrivate 0..1 and
   $context named context 0..1 and
   $lastUpdatedDate named lastUpdatedDate 0..1
   
* isVerified ^short = "Verification has been performed to determine that the email or phone number can be used to communicate with the patient (true or false)"
* isShared ^short = "The email address or phone number is shared with other people (true or false)"
* isPrivate ^short = "The email address or phone number may be used to communicate private health information about the individual identified by the NHI"
* context ^short = "Additional information about the context of use of this contact"

   
* extension[cp-purpose] 0..0
  

