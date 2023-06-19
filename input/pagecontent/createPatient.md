

### Create Patient Overview

A ‘Create Patient’ interaction is initiated by a user who needs to add a new identity record for a person to the Patient Index. <br />
The user has sourced the required identity information, and initiates a create request to create a new patient identity record in the NHI.

**Expectations**
* Prior to adding a new identity record to the NHI an authorised user must complete a thorough [search of the NHI](/matchPatient.html) to ensure the patient does not already exist.
* Duplicate NHI records will not be checked upfront, but will create a task for a potential duplicate to be resolved.
* If the Patient is found in the NHI, then an _update operation_ is required (See use cases for available operations). If not found then a new identitiy record may be added, see below.

<div>
{% include create-patient.svg %}
</div>

#### NHI FHIR Create Patient processing steps:

1. The user initiates creating a new patient in the integrating application
2. The integrating application sends an HTTP POST request (a FHIR create) containing the Patient details E.g. Post\<Endpoint>/Patient
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. A Patient record is created and a Patient ID (nhi-id) is issued
5. The NHPI FHIR API confirms a successful update – HTTP 201 Created status code
6. The integrating application indicates to the user the create has been successful
7. The integrating application retains the nhi-id and version number for future requests relating to this record

#### Create Patient rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Create Patient rules

* A Create Patient request must not create an NHI record which is a duplicate of another Patient’s identity

* A Create Patient request must include a:
  * [preferred name](/StructureDefinition-NhiPatient-definitions.html#Patient.name),
  * [birth date](/StructureDefinition-NhiPatient-definitions.html#Patient.birthDate),
  * [gender](/StructureDefinition-NhiPatient-definitions.html#Patient.gender),
  * [ethnicity](/StructureDefinition-NhiPatient-definitions.html#Patient.extension:ethnicity),
  * NZ Citizenship status,
  * [Primary residential address](/StructureDefinition-NhiPatient-definitions.html#Patient.address), and
  * An information source for each of the following items if they are present; birthdate, country of birth, nz citizenship, deceased date, name.
    * Note:  A status of registered can only be added by an authorised agency [See glossary for definitions](/glossary.html).
  
* A request must update the source of information only when the information is also provided (birthdate, country of birth, nz citizenship, deceased date, name). 

* A Create Patient request may include a:
  *  birthplace
  *  deceased date 


---
 

* _Create Patient errors_
  * _Name is required_
  * _birth date is a required field_
  * _Gender is a required field_
  * _Ethnicity is required_
  * _NZ Citizenship is required_
  * _Address is required_
  * _Information source is a required field (birthdate, country of birth, nz citizenship, deceased date, and name)_
  * _A source of registered can only be updated by an authorised agency_



##### Create Patient - Name rules
* A Patient must have:
  * at least one Active Name
  * one, and only one, Active Name which is preferred.
* A name must have:
  * a [given](/StructureDefinition-NhiPatient-definitions.html#Patient.name.given) or a [family](/StructureDefinition-NhiPatient-definitions.html#Patient.name.family) at minimum.
  * a [preferred name flag](/StructureDefinition-NhiPatient-definitions.html#Patient.name.extension:preferred) (set to true - for add patient only)
  * an information source.
* A name may have:
  * prefix (title),
  * ‘other’ given name (1)
  * use
  * name-use-extra (baby-of and unallocated)
* A name cannot be added with a name use = usual, official or anonymous, old
* A name can only include: Alphas (A-Z or a-z), hypens(-), spaces, apostrophes (TBC)
* The first character of a name must be an Alpha (A-Z or a-z) or apostrophe
* A name field must include at least one Alpha (A-Z or a-z) character
* A request must not create a duplicate of an existing name 
* [‘babyof and unallocated names’](/StructureDefinition-NhiPatient-definitions.html#Patient.name.extension:nhi-name-use-extra) must have:
  * source = NPRF
  * name use = temp
  * name-use-extra ('babyof' or 'unallocated'). 
*  Unallocated names can only be set by an authorised agency
*  The first character of a name must be an Alpha (A-Z or a-z) or apostrophe.
*  A name field which is not null must contain at least one alphabetic character.
*  Allowed name characters alpha, a-z, A-Z, space, hyphen - and apostrophe.
*  A Name update which results in a Name Status of Registered must only be submitted via an authorised Agency
*  A 'Legacy Name' must only be submitted via a legacy HL7 update request


---


* _Create Patient - Name errors_
  * A Patient must have only one active Preferred Name
  * _A Patient name must contain either a Given name or a Surname and a Name Type, a preferred name flag and an information source_
  * _A Baby of name must have source = NPRF, name use = temp_
  * _Unallocted names can only be set by an authorised Agency_
  * _A Patient’s given name and surname must start with a letter of the alphabet or an apostrophe_
  * _Each populated Patient Name field must contain at least one letter_
  * _Patient Name must not contain special characters_
  * _Name can only be set to a ‘Registered’ value by an authorised Agency_
  * _A source of HL7 or MIGR can only be submitted by a legacy update_



##### Create Patient - Birthdate rules
* A [birth date](/StructureDefinition-NhiPatient-definitions.html#Patient.birthDate) must be after 1 January 1900 and not a future date
* A birthdate must be a complete date and formatted either:
  * YYYYMMDD - DOB less than or equal to the current date;
  * YYYYMM – less than or equal to the current month and year;
  * YYYY – less than or equal to the current year
* A request to populate the Date of Birth Information Source must also populate the Date of Birth
* A web service request must not add any birth and death information with a Status of Registered, i.e. Registered Date of Birth, Registered Date of Death, Registered Country of Birth
  

---


* _Create Patient - Birthdate errors_
  * _Patient Birthdate must be after After 1 January 1900 AND cannot be a future date_
  * _A patient Birthdate is required when a patient Birthdate information source is present_
  * _Birthdate can only be set to a ‘Registered’ value by an authorised Agency_


##### Create Patient - Ethnicity rules
* A Patient must have at least one active set of valid [ethnicity](/StructureDefinition-NhiPatient-definitions.html#Patient.extension:ethnicity) information.
* A Patient must supply all ethnicities identified with when supplying ethnicity information
* A set of ethnicity codes must contain at least 1 ethnicity, only one instance of each selected ethnicity, no more than one ‘unspecified’ (residual) ethnicity code and can contain up to 6 ethnicities. 


---


* _Create Patient - Ethnicity errors_
  * _A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code_


##### Create Patient - NZ Citizenship rules
*  A Patient must have a NZ citizenship status
*  A request to populate the NZ Citizenship Information Source must also populate the NZ Citizenship status value


---


* _Create Patient - NZ Citizenship errors_
  * _An NZ Citizenship status is required when an NZ Citizenship Information Source is present_


##### Create Patient - Birthplace rules
* A place of birth must only be populated if a country of birth is present
* A request to populate the Country of Birth Information Source must also populate the Country of Birth


---


* _Create Patient - Birthplace errors_
  * _Country of birth is required when a place of birth is present_
  * _A Country of birth is required when a Country of Birth Information Source is present_


##### Create Patient - Deceased date rules
* If present, a [deceased date](/StructureDefinition-NhiPatient-definitions.html#Patient.deceased[x]) must be on or after birthdate, and not a future date
* deceased date must be a complete date and formatted either;
  * YYYYMMDD - DOD less than or equal to the current date;
  * YYYYMM – less than or equal to the current month and year;
  * YYYY – less than or equal to the current year.
* A request to populate the Date of Death Information Source must also populate the Date of Death
* A web service request must not add any birth and death information with a Status of Registered, i.e. Registered Date of Birth, Registered Date of Death, Registered Country of Birth


---


* _Create Patient - Deceased date errors_
  * _Patient Date of death cannot be a future date_
  * _A patient Date of Death is required when a patient Date of Death information source is present_
  * _Deceased date can only be set to ‘Registered’ by an authorised Agency_
  * _The Date of Birth must be less than or equal to the Date of Death_


##### Create Patient - Gender Rules
*  A Patient must have a current gender, supplied as a valid gender code.
*  A Patient may have a gender-original-text response
  * If supplied, both gender code and gender-original-text will be recorded in the NHI.


##### Create Patient - Address rules
* A Patient must have a single Primary Residential Address
  * use = home
  * type = physical
* An acceptable Patient Address must be: 
  * Validated by an Address Service; OR 
  * User Qualified with a NotValidatedAddressReason 
* A Patient can have a maximum of one residential and one mailing address (1 x address type=physical and 1 x type= postal)
* A residential address must have at least one of: 
  * domicile code (source - eSAM domicile code), 
  * notional domicile code (source – web service call to location lookup file using address parameters), 
  * notional domicile code (source - optional web service request address parameter)}
* A Validated Address must include:
  * a valid nz-address-id
  * Address-line-1 (that matches the address-line-1 returned by eSAM)
  * Address Type (physical or postal)
* The result of an address service 'find address' request using the values provided for the first line of the Address Location must: 
  * result in a single validated address with a match score exceeding the match threshold, AND 
  * have a unique nz-address-id matching the ID provided in the request
* A Validated Address may include:
  * address-building-name (this is additional to address data returned by eSAM)
* An unvalidated-address must include:
  * not-validated-address-reason
  * address-type
  * address-line-1 
* An unvalidated-address may include:
  * address-building-name
  * address-line-2
  * address-suburb
  * address-city
  * address-postal-code
  * address-country-code
  * address-domicile-code
* The street address: (suburb, building-name, line, city, country)
  * must contain an alphanumeric first character,
  * may contain any of [A-Z, a-z, 0-9 and these special characters - /',]


---


* _Create Patient - Address errors_
  * _A Patient must have a primary residential address_
  * _A Patient Address must either be validated by the MoH address service, or have a qualifier to indicate why the address cannot be validated_
  * _A residential address must have a notional domicile code_
  * _Validated address_  
    * _Nz-address-id, Address line 1 and address type are required._
    * _Address-type is a required field and must be postal or physical_
    * address-line must match the espatial value: <>
  * _Unvalidated address_
    * Address line 1, address type, and not-validated-address-reason are required.
    * _A Patient address must contain Address line 1, identify whether the address is residential or mailing, and whether it is the primary residential address_
  * _Domicile / notional domicile code:_
    * _A residential address must have a notional domicile code_
    * _A residential address must have a domicile code_
    * _The address validation service was not available to validate this address; and a notional domicile code was not provided for this address, and could not be automatically assigned_
  * _A Patient Address must either be validated by the MoH address service, or have a qualifier to indicate why the address cannot be validated_
  * _Patient Address contains invalid text_
