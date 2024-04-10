

### Update Birth Overview

The update birth operation allows an authorised user to update a persons birthdate and birthplace information on a persons identity record.

This includes:
* Bithdate
* Birthdate information source
* Birthplace:
  * Country
  * information source
  * place of birth
  

<div>
{% include update-birth.svg %}
</div>

**Update-birth - Processing steps:**

1. The user provides patient details to be updated
2. The integrating application sends an HTTP Post request using the $update-birth operation to the NHI E.g. Post\<Endpoint>/Patient/$update-birth
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The provided patient attributes are updated
5. The updated record is returned with an HTTP 200 ok response
6. The integrating application displays the updated details to the user


<h4>Update-birth - In Parameters</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Parameter name </th>
<th> Parameter type </th>
<th> Mandatory / Optional </th>
<th> Description </th></tr>

<tr><td> nhi </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The patients nhi number </td></tr>

<tr><td> version-id </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The current patient version number </td></tr>

<tr><td> birthdate </td>
<td> valueString </td>
<td> Optional </td>
<td> The patients date of birth </td></tr>

<tr><td> birthdate-information-source </td>
<td> valueString </td>
<td> Optional </td>
<td> The information source for the patients date of birth </td></tr>

<tr><td> country-of-birth </td>
<td> valueString </td>
<td> Optional </td>
<td> The patient's country of birth </td></tr>

<tr><td> country-of-birth-information-source </td>
<td> valueString </td>
<td> Optional </td>
<td> The information source for the patient's country of birth </td></tr>

<tr><td> place-of-birth </td>
<td> valueString </td>
<td> Optional </td>
<td> The place where the person as born, E.g. Whangarei. <br /> Only populate if country-of-birth is populated </td></tr>
</table>

#### Update-identity - Behaviour
  * The NHI is validated
  * The Patient version-id is validated
  * The parameters are validated
  * If all request parameters are valid, the attributes are updated on the NHI.


#### Update-birth - Example request - TBC

```  
{
  "resourceType": "Parameters",
  "id": "example",
  "parameter": [
    {
        "name" : "nhi",
        "valueString" : "ZGD9203"
    },
    {
        "name" : "version-id",
        "valueString" : "3321540"
    },
    {
        "name" : "birthdate",
        "valueString" : "2015-09-09" 
    },
    {
        "name" : "birthdate-information-source",
        "valueString" : "BREG" 
    },
    {
        "name" : "country-of-birth",
        "valueString" : "NZ" 
    },
    {
        "name" : "country-of-birth-information-source",
        "valueString" : "BREG" 
    },
    {
        "name" : "place-of-birth",
        "valueString" : "Whangarei" 
    }
  ]
}

```

#### Update-birth - Rules and errors
  
[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Patient update-birth rules
  * An update request must contain:
    * the live NHI number for the Patient Record.
    * the version number of the current Patient Record.
  * An update request must not:
    * delete/inactivate mandatory information.
    * modify or delete any information with a Status of Registered.
  * An update request may:
    * populate the request parameter with the required value(s) to modify the existing NHI value for that parameter.
    * not populate the request parameter to retain the existing NHI value for that parameter.
    * modify active patient information which is not ‘registered’ or verified’ information.
    * modify active patient information for which evidence has been sighted (“verified” information)
        *  Cannot update attribute source with a lower level of proof.
        *  Can modify a verified source to another verified source or verified to registered (see Modification of registered information).
  * An update request which results in an attribute Status of Registered must only be submitted via an authorised Agency.
  * An update request must not modify a record to the extent that the patient identity describes a different patient.
  * An update requestt to update the value for a core identity field must also update the information source.
  * An update request must update the source of information only when the information is also provided.


* _Patient update-birth errors_
  * _Patient NHI and version number are required_
  * _Version number is incorrect_
  * _The NHI Identifier provided is dormant. This record cannot be updated_
  * _Cannot delete mandatory data_


---

##### Update-birth birthdate rules
* All [create patient birthdate rules apply](/createPatient.html#create-patient-birthdate-rules) and,
* An update will replace the current value


---


* _Patient update-birth birthdate errors_
  * _birth-date has been validated against a verified source, and must only be modified by authorised users_
  * _birth-date can only be set to a ‘Registered’ value by an authorised Agency_
  * _The patient identity information supplied may result in transformation of this NHI. Please resubmit or contact NHI administration._
  * _birth-date-information-source is required when birth-date is present_
  * _birth-date is required when birth-date-information-source is present_
  * _Cannot update attribute source with a lower level of proof._



##### Update-birth birthplace rules
* All [create patient birthplace rules apply](/createPatient.html#create-patient-birthplace-rules) and,
* A request to update place-of-birth must also update country-of-birth
* A request to update country of birth must also update country-of-birth-information-source
* birth-place cannot be updated if source is ‘registered’ (BREG) [See Glossary](/glossary.html#birthplace-definitions)
* birth-place can only be updated to registered by an authorised agency
* A verified birthplace can be updated by another verified source, not by an unverified source.


---

  
* _Patient update-birth birthplace errors_
  * _birth-place has been validated against a verified source, and must only be modified by authorised users_
  * _Can only modify a verified source to another verified source or verified to Registered (see Modification of registered information)_
  * _birth-place can only be set to a ‘Registered’ value by an authorised Agency_
  * _Cannot update attribute source with a lower level of proof._
  * _Cannot delete mandatory data_
  * _country-of-birth-information-source is required when country-of-birth is present_
  * _country-of-birth is required when country-of-birth-information-source is present._
  
