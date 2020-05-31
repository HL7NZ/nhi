Alias: $csInfoSource = https://standards.digital.health.nz/cs/informationsource

//has all the codesystem values
ValueSet: Informationsource
Title: "Information source"
Description: "The source of this data"
* ^url = https://standards.digital.health.nz/fhir/ValueSet/informationsource
* codes from system https://standards.digital.health.nz/cs/informationsource

//Used by the name
ValueSet: NameInformationsource
Title: "Name Information source"
Description: "The source of data for name"
* ^url = https://standards.digital.health.nz/fhir/ValueSet/name-informationsource

* $csInfoSource#BREG "Birth Register"
* $csInfoSource#HL7 "HL7 applied"
* $csInfoSource#MIGR "Migrated"
* $csInfoSource#TRANS "Transition Default"
* $csInfoSource#NZPV "New Zealand Permanent Visa"

//Used by the birth-date
ValueSet: BirthDateInformationsource
Title: "BirthDate Information source"
Description: "The source of data for date of birth"
* ^url = https://standards.digital.health.nz/fhir/ValueSet/birthdate-informationsource

* $csInfoSource#NZCT "New Zealand Citizenship Certificate"
* $csInfoSource#NZET "New Zealand Emergency Travel Document"
* $csInfoSource#NZRT "New Zealand Refugee Travel Document"
* $csInfoSource#OTHR "Other"
* $csInfoSource#PPRT "Passport"

//Used by the death-date
ValueSet: DeathDateInformationsource
Title: "DeathDate Information source"
Description: "The source of data for the date of death"
* ^url = https://standards.digital.health.nz/fhir/ValueSet/deathdate-informationsource

* $csInfoSource#MIGR "Migrated"
* $csInfoSource#NPRF "Proof not sighted"
* $csInfoSource#NZCI "New Zealand Certificate of Identity"

//Used by the country
ValueSet: CountryInformationsource
Title: "Country Information source"
Description: "The source of data for country of birth data"
* ^url = https://standards.digital.health.nz/fhir/ValueSet/country-informationsource

* $csInfoSource#PPRT "Passport"
* $csInfoSource#NZRS "New Zealand Residency"
* $csInfoSource#TRANS "Transition Default"
* $csInfoSource#NZPV "New Zealand Permanent Visa"
* $csInfoSource#NZTV "New Zealand Resident Visa"

//Used by the citizenship
ValueSet: CitizenshipInformationsource
Title: "Citizenship Information source"
Description: "The source of data for Citizenship"
* ^url = https://standards.digital.health.nz/fhir/ValueSet/citizenship-informationsource

* $csInfoSource#PPRT "Passport"
* $csInfoSource#NZRS "New Zealand Residency"
* $csInfoSource#TRANS "Transition Default"
* $csInfoSource#NZPV "New Zealand Permanent Visa"
* $csInfoSource#NZTV "New Zealand Resident Visa"


//The code system that is common to all 'inforrmation source' valuesets
CodeSystem: Informationsource
Title: "Information source"
Description: "The codesystem used to indivate where data has been soruced from. The ValueSets for recording source of Name, birthDate, date of death and country of birth all use this codesystem"
* ^url = https://standards.digital.health.nz/cs/informationsource

* #BREG "Birth Register"
* #HL7 "HL7 applied"
* #MIGR "Migrated"
* #NPRF "Proof not sighted"
* #NZCI "New Zealand Certificate of Identity"
* #NZCT "New Zealand Citizenship Certificate"
* #NZET "New Zealand Emergency Travel Document"
* #NZRT "New Zealand Refugee Travel Document"
* #OTHR "Other"
* #PPRT "Passport"
* #NZRS "New Zealand Residency"
* #TRANS "Transition Default"
* #NZPV "New Zealand Permanent Visa"
* #NZTV "New Zealand Resident Visa"