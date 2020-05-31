
//Extension urls defined in this IG...
//Alias: $citizenship = http://hl7.org.nz/fhir/StructureDefinition/citizenship
Alias: $dhb = http://hl7.org.nz/fhir/StructureDefinition/dhb
Alias: $patient-birthPlace = http://hl7.org.nz/fhir/StructureDefinition/patient-birthPlace


Alias: $originalText = http://hl7.org/fhir/StructureDefinition/originalText
Alias: $ethnicity = http://hl7.org.nz/fhir/StructureDefinition/ethnicity

Alias: $informationsource = http://hl7.org.nz/fhir/StructureDefinition/informationsource
Alias: $preferred = http://hl7.org/fhir/StructureDefinition/iso21090-preferred
//Alias: $notValidatedAddressReason = http://hl7.org/fhir/nhi/StructureDefinition/notValidatedAddressReason
Alias: $addressIsPrimary = http://hl7.org/fhir/nhi/StructureDefinition/addressIsPrimary

Profile:        NhiPatient
Parent:         NzPatient
Id:             NhiPatient
Title:          "NHI Patient"
Description:    "The Patient resource exposed by the NHI."

* ^purpose = "Describe the Patient resource exposed by the NHI"
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NHI Patient profile</div>"

//elements that have been removed
* active 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* managingOrganization 0..0
* link 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0

* deceased[x] only dateTime
/*
//root level extensions
* extension contains

    $dhb named dhb 0..1 and
    $birthPlace named birthPlace 0..1 
*/

/*
//identifier. Slice to have current (use=official) and dormant (use=old)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #openAtEnd

* identifier contains 
    NHI 0..1 MS and
    dormant 0..* MS

* identifier[NHI].system = "https://standards.digital.health.nz/id/nhi"
* identifier[NHI].use = #official (exactly)

* identifier[dormant].system = "https://standards.digital.health.nz/id/nhi"
* identifier[dormant].use = #old (exactly)

*/
   
//Name is required, and there are extensions for source, and isPreferred
* name  1..*
* name.extension contains
    $informationsource named informationsource 0..1 and
    $preferred named preferred 0..1
* name.extension[informationsource].valueCodeableConcept from  https://standards.digital.health.nz/fhir/ValueSet/name-informationsource
  
//The gender has an extension for the original text that was used to establish it (eg from a form)
* gender.extension contains 
    $originalText named originalText 0..1

//birthdate is required, and has an extension for source, which is bound to the birthdate information source valueset
* birthDate 1..1
* birthDate.extension contains  
    $informationsource named informationsource 0..1 
* birthDate.extension[informationsource].valueCodeableConcept from  https://standards.digital.health.nz/fhir/ValueSet/birthdate-informationsource

//date of death has an extension for source, which is bound to the deathdate information source valueset
* deceasedDateTime.extension contains   
    $informationsource named informationsource 0..1
* deceasedDateTime.extension[informationsource].valueCodeableConcept from  https://standards.digital.health.nz/fhir/ValueSet/deathdate-informationsource

// address is required and has a number of extensions. It uses NhiAddress which takes NzAddress and adds NHI specific extensions...
* address only NhiAddress


* address 1..*
* address.line 1..*     //there will always be at least 1 line


//Limit the possible resources for generalPractitioner only to a PractitionerRole
//Note that this might still be a contained resource - that's still supported by this profile
* generalPractitioner only Reference(PractitionerRole)





