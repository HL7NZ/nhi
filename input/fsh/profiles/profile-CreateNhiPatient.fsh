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





Profile:        CreateNhiPatient

Parent:         NhiPatient
Id:             CreateNhiPatient
Title:          "Create NHI Patient"
Description:    "The information to be supplied when requesting that a new  Patient resource be created in the NHI."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/CreateNhiPatient"
//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


* ^purpose = "Describe information to be supplied when requesting that a new  Patient resource be created in the NHI"
* ^text.status = #additional
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Create NHI Patient profile</div>"

//* obeys nhi-nz-create-3

//required elements
* name 1..*
* birthDate 1..1
* gender 1..1
* extension[ethnicity] 1..6
* address 1..1
* address.use 1..1
* birthDate.extension[information-source] 1..1
* extension[nzCitizen] 1..1
* extension[nzCitizen].extension[source].valueCodeableConcept 1..1
* extension[nzCitizen].extension[status] 1..1
* extension[nzCitizen].extension[status].valueCodeableConcept 1..1

// NHIPatient elements which should not be included in a create
* implicitRules 0..0


* id 0..0
* language 0..0
* extension[dhb] 0..0
* identifier[NHI] 0..0
* telecom 0..0
* generalPractitioner 0..0
* contained[GP] 0..0


//required if element present
* extension[birthPlace].extension[source] 1..1
* extension[birthPlace].extension[country] 1..1
* extension[nzCitizen].extension[source] 1..1
* deceasedDateTime.extension[information-source] 1..1
* name.extension[information-source] 1..1
* name.extension[preferred] 1..1

* obeys EM02106
* obeys EM02201
* obeys EM02101
* obeys EM07225
* obeys EM07212
* obeys EM07212-1
* obeys EM07215


 
Invariant: EM02106
Expression: "Patient.name.extension.where((url = 'http://hl7.org/fhir/StructureDefinition/iso21090-preferred') and (valueBoolean=true)).count()=1"
Severity: #error
Description: "A Patient must have exactly one preferred name"


Invariant: EM02201
Expression: "Patient.address.where(  (use = 'home') and (type = 'physical')).count()=1"
Severity: #error
Description: "A Patient must have a primary residential address"

Invariant: EM02101
Expression: "Patient.name.exists() implies Patient.name.given.exists() or Patient.name.family.exists()"
Description: "A Patient name must contain either a given or family name"
Severity: #error

Invariant: EM07225
Expression: "name.where(use='temp').exists() implies (name.extension.where((url='http://hl7.org.nz/fhir/StructureDefinition/information-source') and (valueCodeableConcept.coding.code ='NPRF')).exists())"
Description: "Baby of and unallocated names must have source of NPRF"
Severity: #error


Invariant: EM07212
Expression: "(birthDate > @1900-01-01) and (birthDate < now())"
Description: "birthdate must be after 1 January 1900, and not a future date"
Severity: #error

Invariant: EM07212-1
Expression: "deceasedDateTime < now()"
Description: "Patient Date of Death date cannot be a future date."
Severity: #error

Invariant: EM07215
Expression: "deceasedDateTime >= birthDate"
Description: "Patient Date of Death date must be greater than, or equal to Date of Birth  "
Severity: #error


