### Shorthand description of artifact

<pre>

<div style='color:green'>//Extension urls defined in this IG...</div>
Alias: $patient-citizenship = http://hl7.org.nz/fhir/StructureDefinition/patient-citizenship
Alias: $dhb = http://hl7.org.nz/fhir/StructureDefinition/dhb
Alias: $patient-countryOfBirth = http://hl7.org.nz/fhir/StructureDefinition/patient-countryOfBirth


<div style='color:green'>//Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/buildingName</div>
<div style='color:green'>//Alias: $patient-addressDerived = http://hl7.org.nz/fhir/StructureDefinition/patient-addressDerived</div>
Alias: $originalText = http://hl7.org/fhir/StructureDefinition/originalText
Alias: $ethnicity = http://hl7.org.nz/fhir/StructureDefinition/ethnicity
<div style='color:green'>//Alias: $notValidatedReason = http://hl7.org.nz/fhir/StructureDefinition/notValidatedReason</div>
<div style='color:green'>//Alias: $isPrimary = http://hl7.org.nz/fhir/StructureDefinition/address-isPrimary</div>
Alias: $informationsource = http://hl7.org.nz/fhir/StructureDefinition/informationsource

<div style='color:green'>//external extensions that are used</div>
Alias: $preferred = http://hl7.org/fhir/StructureDefinition/iso21090-preferred

Profile:        NhiPatient
Parent:         Patient
Id:             NhiPatient
Title:          "NHI Patient"
Description:    "The Patient resource exposed by the NHI."

* ^purpose = "Describe the Patient resource exposed by the NHI"
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NHI Patient profile</div>"

<div style='color:green'>//elements that have been removed</div>
* active 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* managingOrganization 0..0
* link 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0

* deceased[x] only dateTime

<div style='color:green'>//root level extensions</div>
* extension contains
    $patient-citizenship named patient-citizenship 0..1 and
    $dhb named dhb 0..1 and
    $patient-countryOfBirth named patient-countryOfBirth 0..1 and
    $ethnicity named ethnicity 0..4 

<div style='color:green'>//identifier. Slice to have current (use=official) and dormant (use=old)</div>
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

   
<div style='color:green'>//Name is required, and there are extensions for source, and isPreferred</div>
* name  1..*
* name.extension contains
    $informationsource named informationsource 0..1 and
    $preferred named preferred 0..1
* name.extension[informationsource].valueCodeableConcept from  https://standards.digital.health.nz/fhir/ValueSet/name-informationsource
  
<div style='color:green'>//The gender has an extension for the original text that was used to establish it (eg from a form)</div>
* gender.extension contains 
    $originalText named originalText 0..1

<div style='color:green'>//birthdate is required, and has an extension for source, which is bound to the birthdate information source valueset</div>
* birthDate 1..1
* birthDate.extension contains  
    $informationsource named informationsource 0..1 
* birthDate.extension[informationsource].valueCodeableConcept from  https://standards.digital.health.nz/fhir/ValueSet/birthdate-informationsource

<div style='color:green'>//date of death has an extension for source, which is bound to the deathdate information source valueset</div>
* deceasedDateTime.extension contains   
    $informationsource named informationsource 0..1
* deceasedDateTime.extension[informationsource].valueCodeableConcept from  https://standards.digital.health.nz/fhir/ValueSet/deathdate-informationsource

<div style='color:green'>// address is required and has a number of extensions. It uses NhiAddress which takes NzAddress and adds NHI specific extensions...</div>
* address only NhiAddress
* address 1..*
* address.line 1..*     //there will always be at least 1 line

<div style='color:green'>//Limit the possible resources for generalPractitioner only to a PractitionerRole</div>
<div style='color:green'>//Note that this might still be a contained resource - that's still supported by this profile</div>
* generalPractitioner only Reference(PractitionerRole)






</pre>