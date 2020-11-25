//Extension urls defined in this IG...

Alias: $dhb = http://hl7.org.nz/fhir/StructureDefinition/dhb
Alias: $patient-birthPlace = http://hl7.org.nz/fhir/StructureDefinition/patient-birthPlace

Alias: $originalText = http://hl7.org/fhir/StructureDefinition/originalText
Alias: $ethnicity = http://hl7.org.nz/fhir/StructureDefinition/ethnicity

Alias: $preferred = http://hl7.org/fhir/StructureDefinition/iso21090-preferred
Alias: $addressIsPrimary = http://hl7.org.nz/fhir/nhi/StructureDefinition/addressIsPrimary
Alias: $information-source = http://hl7.org.nz/fhir/StructureDefinition/information-source

Profile:        NhiPatient
//Parent:         CommonPatient
Parent:         Patient
Id:             NhiPatient
Title:          "NHI Patient"
Description:    "The Patient resource exposed by the NHI."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


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

   
//Name is required, and there are extensions for source, and isPreferred
* name  1..*
* name.extension contains
    information-source named information-source 0..1 and
    $preferred named preferred 0..1
* name.extension[information-source].valueCodeableConcept from  https://standards.digital.health.nz/fhir/ValueSet/information-source-code
  
//The gender has an extension for the original text that was used to establish it (eg from a form)
* gender.extension contains 
    $originalText named originalText 0..1

//birthdate is required, and has an extension for source, which is bound to the birthdate information source valueset
* birthDate 1..1
* birthDate.extension contains  
    $information-source named information-source 0..1 

* birthDate.extension[information-source].valueCodeableConcept from  https://standards.digital.health.nz/fhir/ValueSet/information-source-code

//date of death has an extension for source, which is bound to the deathdate information source valueset
* deceased[x] only dateTime
* deceasedDateTime.extension contains  
    $information-source named information-source 0..1 


//* deceasedDateTime.extension[informationsource].url = "informationsource" (exactly)
* deceasedDateTime.extension[information-source].valueCodeableConcept from  https://standards.digital.health.nz/fhir/ValueSet/information-source-code
// address is required and has a number of extensions. It uses NhiAddress which takes NzAddress and adds NHI specific extensions...
* address only NhiAddress


* address 1..*
* address.line 1..*     //there will always be at least 1 line


//Limit the possible resources for generalPractitioner only to a PractitionerRole
//Note that this might still be a contained resource - that's still supported by this profile
* generalPractitioner only Reference(PractitionerRole)





