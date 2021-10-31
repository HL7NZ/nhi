Logical:        PatientModel
Title:          "Patient"
Description:    "Representing a person receiving healthcare"
Parent:         Element

* name 0..1 HumanName "Name of the practitioner"
  * source 0..1 CodeableConcept "The source of the name"
* gender 0..1 string "The patients administrative gender"
* gender from http://hl7.org/fhir/ValueSet/administrative-gender
  * originalText 0..1 string "The text from which the gender was derived"
* birthDate 0..1 date "Date of Birth"
  * source 0..1 CodeableConcept "The source of the Date of Birth"
* deathDate 0..1 date "Date of Death"
  * source 0..1 CodeableConcept "The source of the Date of Death"
* ethnicity 0..6 CodeableConcept "Ethnicity of the provider"
* ethnicity from https://nzhts.digital.health.nz/fhir/ValueSet/ethnic-group-level-4-code
* nhi 1..1 Identifier "National Health Identifier"
* citizenship 0..1 string "NZ Citizenship status"
  * source 0..1 CodeableConcept "The source of the citizenship status"
* birthPlace 0..1 BackboneElement "Place of Birth"
  * country 0..1 string "Country of Birth"
  * place 0..1 string "Area within country"
  * source 0..1 CodeableConcept "The source of the Birth Place"
* residency 0..1 CodeableConcept "residency status"
  * source 0..1 CodeableConcept "The source of the residency status"

/*


* dormantCPN 0..* Identifier "Previously assigned CPN identifiers"


* deathDate 0..1 date "Date of Death"
* communication 0..* CodeableConcept "Language/s spoken by the provider"
* communication from http://hl7.org/fhir/ValueSet/languages

* registration 0..* BackboneElement "Professional registration"
  * status 1..1 CodeableConcept "The status of the registration"
  * status from https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code
  * identifier 0..* Identifier "Any identifiers"
  * code 1..1 CodeableConcept "The code representing the qualification itself"
  * period 0..* Period "The period over which the registration is active (otherwise called the APC)"
  * issuer 0..1 Reference(Organization) "The organization that issued the registration"
  * initialDate 0..1 date "The date that this registration was first recorded"
  * additionalAuthorization 0..* BackboneElement "Additional Authorizations for this provider"
    * code 0..1 CodeableConcept "The code that represents the authorization"
    * code from 	https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-additional-authorisation-code
    * period 0..* Period "The period over which the authorization is active"
  * scopeOfPractice 0..* BackboneElement "Scope of practice for this provider"
    * code 0..1 CodeableConcept "The code that represents the Scope of practice"
    * code from https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-scope-of-practice-code
    * description 0..1 string "textual description"
    * period 0..* Period "The period over which the Scope of practice is active"
  * conditionOnPractice 0..* BackboneElement "Conditions that affect what this provider can do"
    * description 0..1 string "textual description"
    * period 0..* Period "The period over which the condition is active"

*/