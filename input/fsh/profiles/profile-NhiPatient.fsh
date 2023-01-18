//Extension urls defined in this IG...

Alias: $dhb = http://hl7.org.nz/fhir/StructureDefinition/dhb
Alias: $birthPlace = http://hl7.org.nz/fhir/StructureDefinition/birth-place

Alias: $originalText = http://hl7.org.nz/fhir/StructureDefinition/gender-original-text

Alias: $ethnicity = http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity

Alias: $preferred = http://hl7.org/fhir/StructureDefinition/iso21090-preferred
Alias: $addressIsPrimary = http://hl7.org.nz/fhir/nhi/StructureDefinition/addressIsPrimary
Alias: $information-source = http://hl7.org.nz/fhir/StructureDefinition/information-source

Alias: $nzCitizen = http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship
Alias: $nzResidency = http://hl7.org.nz/fhir/StructureDefinition/nz-residency
Alias: $name-use-extra = http://hl7.org.nz/fhir/StructureDefinition/name-use-extra





Profile:        NhiPatient

Parent:         NzPatient
Id:             NhiPatient
Title:          "NHI Patient"
Description:    "The Patient resource exposed by the NHI."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


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
* name.period 0..0
* name.text 0..0
* identifier.period 0..0
* telecom 0..0
* generalPractitioner 0..1
* deceased[x] only dateTime

* extension contains 
    $ethnicity named ethnicity 0..6 and
    // $nzCitizen named nzCitizen 0..1 and
    //$dhb named dhb 0..1 and 
    $birthPlace named birthPlace 0..1 and
    $nzResidency named nzResidency 0..1  
 

// * extension[nzCitizen] ^short = "This field indicates New Zealand citizenship status of the patient"
// * extension[nzCitizen] ^definition = "This field is usd to indicate the New Zealand citizenship status of the patient"
* extension[nzCitizen].extension[source].valueCodeableConcept from $nz-citizenship-information-source-vs

* extension[nzResidency].extension[source].valueCodeableConcept from $nz-residency-information-source-vs

//* extension[dhb].value[x] only CodeableConcept
//* extension[dhb].valueCodeableConcept from $dhb-vs
   
//Name is required, and there are extensions for source, and isPreferred
* name  0..*
* name.extension contains
    $information-source named information-source 0..1 and
    $preferred named preferred 1..1 and
   	$name-use-extra named nhi-name-use-extra 0..1

// using HISO codesets
* name.extension[information-source].valueCodeableConcept from  $name-information-source-vs
* name.prefix from $name-prefix-vs
//* name.suffix from $name-suffix-vs 
* name.suffix 0..0


//The gender has an extension for the original text that was used to establish it (eg from a form)
* gender.extension contains 
    $originalText named originalText 0..1

//birthdate is required, and has an extension for source, which is bound to the birthdate information source valueset
* birthDate 0..1
* birthDate.extension contains  
    $information-source named information-source 0..1 

* birthDate.extension[information-source].valueCodeableConcept from $dob-information-source-vs

//date of death has an extension for source, which is bound to the deathdate information source valueset
* deceased[x] only dateTime
* deceasedDateTime.extension contains  
    $information-source named information-source 0..1 
* deceasedDateTime.extension[information-source].valueCodeableConcept from  https://nzhts.digital.health.nz/fhir/ValueSet/dod-information-source-code

// address is required and has a number of extensions. It uses NhiAddress which takes NzAddress and adds NHI specific extensions...
* address only NhiAddress


* address 0..*
* address.line 1..*     //there will always be at least 1 line

//Limit the possible resources for generalPractitioner only to a PractitionerRole
//Note that this might still be a contained resource - that's still supported by this profile
* generalPractitioner only Reference(PractitionerRole)



//identifier constraints for NHI

//don't allow other identifiers
* identifier ^slicing.rules = #closed

//* identifier.system from https://standards.digital.health.nz/ns/nhi-id
* identifier.type 0..0
* identifier.period 0..0
//* identifier.use from $nhi-identifier-use-code-vs
//* identifier.use ^short = "official | old"

* identifier[NHI].period 0..0 
* identifier[NHI].type 0..0 


//other constraints
* extension[pho] 0..0
* extension[iwi] 0..0
* extension[sex-at-birth] 0..0
* extension[domicile-code] 0..0

// slice for contained practitionerRole
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained ^slicing.description = "Slicing to specifiy a PractitionerRole resource may be returned as a contained resource for the Patient's General Practitioner information"
* contained contains GP 0..1
* contained[GP] only http://hl7.org/fhir/StructureDefinition/PractitionerRole
* contained[GP] ^short = "Patient's GP"
* contained[GP] ^definition = "Contained resource for the patient's GP"

