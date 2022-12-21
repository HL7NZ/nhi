

### Add Patient Overview

An ‘Add Patient’ interaction is initiated by a user who needs to add a new identity record for a person to the Patient Index. <br />
The user has sourced the required identity information, and initiates an add request to create a patient identity record in the NHI.

**Expectations**
* Prior to adding a new identity record to the NHI an authorised user must complete a thorough [search of the NHI](/matchPatient.html) to ensure the patient does not already exist.
* Duplicate NHI records will not be checked upfront, but will create a task for a potential duplicate to be resolved.
* If the Patient is found in the NHI, then an _update operation_ is required. If not found then a new identitiy record may be added, see below.

<div>
{% include add-patient.svg %}
</div>

#### **NHI FHIR Add Patient processing steps:**

1. The user initiates creating a new Patient in the integrating application
2. The integrating application sends an HTTP POST request (a FHIR create) containing the Patient details E.g. Post\<Endpoint>/Patient
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. A Patient record is created and a Patient ID (nhi-id) is issued
5. The NHPI FHIR API confirms a successful update – HTTP 201 Created status code
6. The integrating application indicates to the user the create has been successful
7. The integrating application retains the nhi-id and version number for future requests relating to this record

#### Add Patient rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Add Patient rules**
  * An add Patient request must include a:
    * [preferred name](/StructureDefinition-NhiPatient-definitions.html#Patient.name),
    * [birth date](/StructureDefinition-NhiPatient-definitions.html#Patient.birthDate),
    * [gender](/StructureDefinition-NhiPatient-definitions.html#Patient.gender),
    * [ethnicity](/StructureDefinition-NhiPatient-definitions.html#Patient.extension:ethnicity),
    * NZ Citizenship status (TBC),
    * NZ Residency status (TBC),
    * [Primary residential address](/StructureDefinition-NhiPatient-definitions.html#Patient.address), and
    * An information source for each of the following items if they are present; birthdate, country of birth, citizenship, residency, deceased date, and name.
      * Note:  A status of registered can only be added by an authorised agency [See glossary for definitions](/glossary.html).

  * An add Patient request may include a:
    *  birthplace
    *  deceased date
    *  postal address (TBC)

  * An Add Patient request must not create an NHI record which is a duplicate of another Patient’s identity
 
* _Add Patient errors_
  * _Name is required_
  * _Address is required_
  * _birth date is a required field_
  * _Gender is a required field_
  * _Ethnicity is required_
  * _A source of registered can only be updated by an authorised agency_
  * _The patient identity information supplied may result in duplication of another identity. Are you sure this update is correct?_


---


* **Add Patient Name rules**
  * A name must have:
    * a [given](/StructureDefinition-NhiPatient-definitions.html#Patient.name.given) or a [family](/StructureDefinition-NhiPatient-definitions.html#Patient.name.family) at minimum.
    * a [preferred name flag](/StructureDefinition-NhiPatient-definitions.html#Patient.name.extension:preferred) - set to true
  * A name may have:
    * prefix (title),
    * ‘other’ given name (1)
    * use
  * A name cannot be added with a name use = old.
  * A name can only include: Alphas (A-Z or a-z), hypens(-), spaces, apostrophes (TBC)
  * The first character of a name must be an Alpha (A-Z or a-z) or apostrophe
  * A name field must include at least one Alpha (A-Z or a-z) character
  * A request must not create a duplicate of an existing name 
  * A [‘baby of name’](/StructureDefinition-NhiPatient-definitions.html#Patient.name.extension:nhi-name-use-extra) must have source = NPRF, name use = temp, name-use-extra = 'baby of. 
  * A [‘baby of name’](/StructureDefinition-NhiPatient-definitions.html#Patient.name.extension:nhi-name-use-extra) must have a name use = temp
  *  Unallocated names can only be set by an authorised agency


* _Name errors_
  * _A Patient name must contain either a Given name or a Surname and a Name type_
  * _Patient Given Name is required when Patient Other Given Names is present_
  * _A Patient Given Name, Other Given Names, and Family Name must not contain special characters (TBC)_
  * _A Patient’s Given Name and Surname must start with a letter of the alphabet or an apostrophe_
  * _Each populated Patient Name field must contain at least one letter_
  * _Duplicate name:_
    * _The patient name already exists for this patient_
    * _The Patient name already exists for this patient as a protected name_
    * _This Name has been removed from the Patient record – are you sure this name should be reinstated?_
    * _This Name was protected, and has been removed from the Patient record – are you sure this name should be reinstated?_
    * _The patient name requested has been removed from the Patient record by the Ministry of Health_
  * _You are not authorised to set the name source to registered_
  * _A ‘baby of’ Name Source must be set to ‘NPRF - Proof not Sighted_
  * _A ‘baby of’ Name must have Name Use = Temp_
  * _An ‘unallocated’ Name must have Name Use = Temp_


* **Birthdate rules**
  * A [birth date](/StructureDefinition-NhiPatient-definitions.html#Patient.birthDate) must be after 1 January 1900 and not a future date
  * A birthdate must be a complete date and formatted either:
    * YYYYMMDD - DOB less than or equal to the current date;
    * YYYYMM – less than or equal to the current month and year;
    * YYYY – less than or equal to the current year
  
  
  * _Birthdate errors_
  * _Birthdate cannot be in the future_
  * _A patient Date of Birth is required when a patient Date of Birth information source is present_
  * _Birthdate can only be set to a ‘Registered’ value by an authorised Agency_


---


* **Ethnicity rules**
  * A Patient must have at least one active set of valid [ethnicity](/StructureDefinition-NhiPatient-definitions.html#Patient.extension:ethnicity) information.
  * A set of ethnicity codes must contain at least 1 ethnicity, only one instance of each selected ethnicity, no more than one ‘unspecified’ (residual) ethnicity code and can contain up to 6 ethnicities. 

* _Ethnicity errors_
  * _A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code_


---


* **Citizenship rules**
  *  [NZ Citizenship](/StructureDefinition-NhiPatient-definitions.html#Patient.extension:nzCitizen)
  *  See the [glossary](/glossary.html#tbc---valid-combinations-of-nz-citizenship-and-nz-residency-status) for acceptable Citizenship / residency status combinations

* _Citizenship errors_
  * _An NZ Citizenship status is required when an NZ Citizenship Information Source is present_


---


* **Residency rules**
  *  [NZ Residency](/StructureDefinition-NhiPatient-definitions.html#Patient.extension:nzResidency)
  *  See the [glossary](/glossary.html#tbc---valid-combinations-of-nz-citizenship-and-nz-residency-status) for acceptable Citizenship / residency status combinations

* _Residency errors_
  * _An NZ Residency status is required when an NZ Residency Information Source is present_


---


* **Birthplace rules**
  * A place of birth must only be populated if a country of birth is present

* _Birthplace errors_
  * _Country of birth is required when a place of birth is present_
  * _A Country of birth is required when a Country of Birth Information Source is present_


---

* **Deceased date rules**
  * If present, a [date of death](/StructureDefinition-NhiPatient-definitions.html#Patient.deceased[x]) must be after 1 January 1800 and not in the future
  * The [birth date](/StructureDefinition-NhiPatient-definitions.html#Patient.birthDate) must be less than or equal to the [Date of Death](/StructureDefinition-NhiPatient-definitions.html#Patient.deceased[x])

* _Deceased date errors_
  * _Patient Date of death cannot be a future date_
  * _A patient Date of Death is required when a patient Date of Death information source is present_
  * _Deceased date can only be set to ‘Registered’ by an authorised Agency_
  * _The Date of Birth must be less than or equal to the Date of Death_


---


* **Address rules**
  * Must have one address with:
    * use = home
    * type = physical
*  An address may be validated or not validated see [address rules](/updateAddress.html) for validated vs unvalidated address requirements

* _Address errors_
  * _A Patient must have a primary residential address_
  * _A Patient address must contain Address line 1, identify whether the address is residential or mailing, and whether it is the primary residential address_
  * _Patient street address contains invalid text_
  * _Address protection can only be changed by an authorised user_
  * _Duplicate address:_
    * _The patient address already exists for this patient_
    * _The patient address already exists for this patient as a protected address_
    * _This Address has been removed from the Patient record – are you sure this address should be reinstated?_
    * _This Address was protected, and has been removed from the Patient record – are you sure this Address should be reinstated?_
    * _The Patient address requested has been removed from the Patient record by the Ministry of Health_
    * _A validated mailing address must be an address at which mail can be delivered_
    * _Domicile / notional domicile code:_
      * _A residential address must have a notional domicile code_
      * _A residential address must have a domicile code_
      * _The address validation service was not available to validate this address; and a notional domicile code was not provided for this address, and could not be automatically assigned_
    * _A Patient Address must either be validated by the MoH address service, or have a qualifier to indicate why the address cannot be validated_
    * _A address can only include: Alphas (A-Z or a-z), hypens(-), spaces, apostrophes (TBC)_
