
//Extension urls defined in this IG...

Alias: $dhb = http://hl7.org.nz/fhir/StructureDefinition/dhb
Alias: $patient-birthPlace = http://hl7.org.nz/fhir/StructureDefinition/patient-birthPlace


Alias: $originalText = http://hl7.org/fhir/StructureDefinition/originalText
Alias: $ethnicity = http://hl7.org.nz/fhir/StructureDefinition/ethnicity

//Alias: $informationsource = http://hl7.org.nz/fhir/StructureDefinition/information-source
//Alias: $informationsource = http://hl7.org.nz/fhir/StructureDefinition/information-source



Alias: $preferred = http://hl7.org/fhir/StructureDefinition/iso21090-preferred
Alias: $addressIsPrimary = http://hl7.org/fhir/nhi/StructureDefinition/addressIsPrimary

Profile:        NhiPatient
Parent:         Patient
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


   
//Name is required, and there are extensions for source, and isPreferred
* name  1..*
* name.extension contains
    informationsource 0..1 and
   // $informationsource named informationsource 0..1 and
    $preferred named preferred 0..1
* name.extension[informationsource].valueCodeableConcept from  http:/hl7.org.nz/fhir/ValueSet/infosource
  
//The gender has an extension for the original text that was used to establish it (eg from a form)
* gender.extension contains 
    $originalText named originalText 0..1

//birthdate is required, and has an extension for source, which is bound to the birthdate information source valueset
* birthDate 1..1
* birthDate.extension contains  
//$informationsource named informationsource 0..1 
    informationsource 0..1 
* birthDate.extension[informationsource].valueCodeableConcept from  http:/hl7.org.nz/fhir/ValueSet/infosource

//date of death has an extension for source, which is bound to the deathdate information source valueset
* deceasedDateTime.extension contains   
    informationsource 0..1

    //$informationsource named informationsource 0..1
* deceasedDateTime.extension[informationsource].valueCodeableConcept from  http:/hl7.org.nz/fhir/ValueSet/infosource

// address is required and has a number of extensions. It uses NhiAddress which takes NzAddress and adds NHI specific extensions...
// - todo !!!!!  * address only NhiAddress


* address 1..*
* address.line 1..*     //there will always be at least 1 line


//Limit the possible resources for generalPractitioner only to a PractitionerRole
//Note that this might still be a contained resource - that's still supported by this profile
* generalPractitioner only Reference(PractitionerRole)





