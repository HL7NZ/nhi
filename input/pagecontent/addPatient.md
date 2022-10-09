

### Add Patient Overview

An ‘Add Patient’ interaction is initiated by a user who needs to add a new identity record for a person to the Patient Index. <br />
The user has sourced the required identity information, and initiates an add request to create a patient identity record in the NHI.

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

#### Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Add Patient rules**
  * An add Patient request must include a:
    * [name](/StructureDefinition-NhiPatient-definitions.html#Patient.name),
    * [address](/StructureDefinition-NhiPatient-definitions.html#Patient.address),
    * [birth date](/StructureDefinition-NhiPatient-definitions.html#Patient.birthDate),
    * [gender](/StructureDefinition-NhiPatient-definitions.html#Patient.gender), and
    * [ethnicity](/StructureDefinition-NhiPatient-definitions.html#Patient.extension:ethnicity)
  * A request cannot create an NHI record which is a duplicate of another Patient’s identity
  * When an element is supplied that has an information source then both the element and source must be present together
 
* _Add Patient errors_
  * _Name is required_
  * _Address is required_
  * _birth date is a required field_
  * _Gender is a required field_
  * _Ethnicity is required_
  * _The patient identity information supplied may result in duplication of another identity. Are you sure this update is correct?_


---

* **Birth and Death rules**
  * A patient must have a [birth date](/StructureDefinition-NhiPatient-definitions.html#Patient.birthDate), that is after 1 January 1800 and not in the future
  * If present, a [date of death](/StructureDefinition-NhiPatient-definitions.html#Patient.deceased[x]) must be after 1 January 1800 and not in the future
  * The [birth date](/StructureDefinition-NhiPatient-definitions.html#Patient.birthDate) must be less than or equal to the [Date of Death](/StructureDefinition-NhiPatient-definitions.html#Patient.deceased[x])
  * A [birth date](/StructureDefinition-NhiPatient-definitions.html#Patient.birthDate), [Date of Death](/StructureDefinition-NhiPatient-definitions.html#Patient.deceased[x]), and [Country of Birth](/StructureDefinition-birth-place-definitions.html#Extension.extension:country) source can only be set to registered by an authorised agency

* _Birth and Death errors_
  * _Patient Date of birth  cannot be a future date_
  * _Patient Date of death cannot be a future date_
  * _A patient Date of Birth is required when a patient Date of Birth information source is present_
  * _A patient Date of Death is required when a patient Date of Death information source is present_
  * _A patient is required when a patient Country of Birth information source is present_
  * _Birth and death information can only be set to a ‘Registered’ value by an authorised Agency_
  * _The Date of Birth must be less than or equal to the Date of Death_
  * _A Patient Country of Birth is required when Patient Place of Birth is present_


---


* **Ethnicity rules**
  * A Patient must have at least one active set of valid [ethnicity](/StructureDefinition-NhiPatient-definitions.html#Patient.extension:ethnicity) information 
  * A valid set of Ethnicity information:
    * contains at least one, and up to 6, level 4 ethnic groups, AND 
    * each code appears only once in the set (i.e. no duplicate values), AND 
    * contains a maximum of one residual code (9xxxx), AND 
    * does not contain code 96666 (repeated value), AND 
    * does not contain code 98888 (TBC?)
  * **Add ethnicity text rules here TBD**

* _Ethnicity errors_
  * _A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code_


---


* **Citizenship rules**
  * [NZ Citizenship](/StructureDefinition-NhiPatient-definitions.html#Patient.extension:nzCitizen) - See add patient information source rule

* _Citizenship errors_
  * _A Patients NZ Citizenship status value is required when a Patients NZ Citizenship Information Source is present_


---


* **Name rules**
  * A patient must have one name that is the [preferred name](/StructureDefinition-NhiPatient-definitions.html#Patient.name.extension:preferred)
  * A name must have either a [first](/StructureDefinition-NhiPatient-definitions.html#Patient.name.given) or [surname](/StructureDefinition-NhiPatient-definitions.html#Patient.name.family) at minimum
  * A given name is required when an ‘other given name’ is present
  * **A name can only include: Alphas (A-Z or a-z), hypens(-), spaces, apostrophes (TBC)**
  * The first character of a name must be an Alpha (A-Z or a-z) or apostrophe
  * A name field must include at least one Alphas (A-Z or a-z) character
  * A request must not create a duplicate of an existing name
  * A [name information source](/StructureDefinition-NhiPatient-definitions.html#Patient.name.extension:information-source) can only be set to registered by an authorised agency 
  * A [‘baby of’](/StructureDefinition-NhiPatient-definitions.html#Patient.name.extension:nhi-name-use-extra) name must have source set to NPRF
  * A [‘baby of’](/StructureDefinition-NhiPatient-definitions.html#Patient.name.extension:nhi-name-use-extra) name must have a name use = temp
  * An [unallocated](/StructureDefinition-NhiPatient-definitions.html#Patient.name.extension:nhi-name-use-extra) NHI must have a name use = temp
 


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


---


* **Address rules**
  * A Patient must have a single [Primary](/StructureDefinition-NhiPatient-definitions.html#Patient.address.extension:isPrimaryAddress) [Residential](/StructureDefinition-NhiPatient-definitions.html#Patient.address.type) Address
  * An address must include, Street Address [Address line 1](/StructureDefinition-NhiPatient-definitions.html#Patient.address.line), [Address Type](/StructureDefinition-NhiPatient-definitions.html#Patient.address.type), [Primary Address Flag](/StructureDefinition-NhiPatient-definitions.html#Patient.address.extension:isPrimaryAddress).
  * A street address must contain one alphanumeric character
  * A Residential Address must be a [Physical address](/StructureDefinition-NhiPatient-definitions.html#Patient.address.type).
  * Must not create a duplicate of an existing address.
  * Validated Mailing Address must be Deliverable
  * A Residential Address must have [domicile or notional domicile code](/StructureDefinition-NhiPatient-definitions.html#Patient.address.extension:domicile-code)
  * An address must either validate or have an acceptable [non-validation reason](/StructureDefinition-NhiPatient-definitions.html#Patient.address.extension:notValidatedAddressReason)
  * Only A-Z, 0-9, spaces, apostrophes, slashes or dashes are allowed (TBC)??


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
