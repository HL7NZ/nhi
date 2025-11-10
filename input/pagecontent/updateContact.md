

### Update Contact Overview

The update contact operations allow an authorised user to maintain a person's contact informatioon on their identity record.

Three operations are available:
* **add-contact – Set the Preferred Name the person wishes to be identied as**
* **replace-contact – Add a new name to the set of Patient Names for this NHI record**
* **delete-contact – Replace a name that is currently on the patients NHI record**
* 


### Add-contact Overview

* Allows an authorised user to add a contact to a patient's NHI record



<div>
{% include add-contact.svg %}
</div>



**Add-contact  - Processing steps:**
 
1. The user provides the new contact details to be added to the patient's NHI record
2. The integrating application sends an HTTP Post request using the $add-contact operation to the NHI E.g.`Post\<Endpoint>/Patient/$add-contact`
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned.
4. The updated patient record is returned with an HTTP 200 ok response.
5. The integrating application displays the updated patient details to the user.



<h4>Add-contact - In Parameters </h4>
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

<tr><td> use </td>
<td> valueString </td>
<td> Optional </td>
<td> home or mobile</td></tr>

<tr><td> system </td>
<td> valueString </td>
<td> Optional </td>
<td> phone or email</td></tr>

<tr><td> value </td>
<td> valueString </td>
<td> Optional </td>
<td> the phone number or email address</td></tr>

<tr><td> value </td>
<td> valueString </td>
<td> Optional </td>
<td> the phone number or email address</td></tr>

</table>



#### Add-contact - Behaviour
  * The NHI is validated.
  * The Patient version-id is validated.
  * Thecontact details are  validated.
  * If all request parameters are valid the name.preferred boolean is set to TRUE on the requested name and FALSE on the current preferred name.


#### Add-contact - Example request

```  
to do

```

#### Add-contact - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Add-contact rules
  	* Add-contact request must contain:
    * the live NHI number for the Patient Record.
    * the version number of the current Patient Record.
    * the contact details



  * _Add-contact errors._
  * _A valid NHI, preferred ID and version number are required._ 
  



### Replace-contact Overview

* Allows an authorised user to replace patient contact details for this NHI record.


<div>
{% include replace-contact.svg %}
</div>



**Replace-contact - Processing steps:**
 
1. The user provides the new patient contact  to be added to the patients NHI record, and the id of the existing contact which is to be replaced.
2. The integrating application sends an HTTP Post request using the $add-name operation to the NHI E.g. `Post\<Endpoint>/Patient/$replace-contact`
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned.
4. The updated patient record is returned with an HTTP 200 ok response.
5. The integrating application displays the updated patient details to the user.



<h4>Replace-contact - In Parameters </h4>
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

<tr><td> use </td>
<td> valueString </td>
<td> Optional </td>
<td> The name use qualifier for a name </td></tr>

<tr><td> prefix </td>
<td> valueString </td>
<td> Optional </td>
<td> The name prefix </td></tr>

<tr><td> given-1 </td>
<td> valueString </td>
<td> Optional* </td>
<td> The first or given name </td></tr>

<tr><td> given-2 </td>
<td> valueString </td>
<td> Optional* </td>
<td> The middle or other given name/s </td></tr>

<tr><td> family </td>
<td> valueString </td>
<td> Optional* </td>
<td> The family name </td></tr>

<tr><td> preferred </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The attribute used to indicate whether the name is preferred or not </td></tr>

<tr><td> information-source </td>
<td> valueString </td>
<td> Mandatory </td>
<td> the information source sighted when adding the name </td></tr>

<tr><td> nhi-name-use-extra </td>
<td> valueString </td>
<td> Optional </td>
<td> an attribute used to qualify pre-allocated and babyof names </td></tr>
</table>



#### Replace-contact - Behaviour
  * The NHI is validated.
  * The Patient version-id is validated.
  * If all request parameters are valid the name is added to the NHI.
    * If the preferred boolean is set to TRUE in the request then the name is added as the preferred name and the current preferred name is set to FALSE.
    * If the preferred boolean is set to FALSE in the request then the name is added to the NHI and no changes occur to any names on the NHI.


#### Replace-contact- Example request

```  
{
  "resourceType": "Parameters",
  "id": "example",
  "parameter": [
    {
        "name" : "nhi",
        "valueString" : "ZGD1407"
    },
    {
        "name" : "version-id",
        "valueString" : "3357591"
    },
    {
        "name" : "use",
        "valueString" : "maiden"
    },
    {
        "name" : "prefix",
        "valueString" : "mr"
    },
    {
        "name" : "given-1",
        "valueString" : "James"
    },
    {
        "name" : "given-2",
        "valueString" : "George Joseph"
    },
    {
        "name" : "family",
        "valueString" : "Granger"
    },
    {
        "name" : "preferred",
        "valueString" : "true"
    },
    {
        "name" : "information-source",
        "valueString" : "NPRF"
    }
  ]
}

```

#### Replace-contact - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Replace-contact rules
  * All [create patient name rules](/createPatient.html#create-patient-name-rules) apply, and
  * An add-name request must contain:
    * the live NHI number for the Patient Record.
    * the version number of the current Patient Record.
  * An update name request must not create a duplicate of an existing name for an NHI number [see glossary for name definitions](/glossary.html)
  * A request must not result in information removed from a Patient Record by NHI Administration, being added (A name that has been deleted by HealthNZ cannot be added i.e. family name, given(1) and given(2) match a name with a ‘deleted’ status).
  * A request must update the source of information only when the information is also provided.
  * An update which results in an attribute Status of Registered must only be submitted via an authorised Agency update.
  * A Patient must have one, and only one, Active Name which is preferred.
  * A Patient may have a maximum of 200 active Names.


---


* _Add-name errors._
  * _Patient NHI and version number are required._
  * _Version number is incorrect._
  * _The name already exists for this patient._
  * _The name requested has been removed from the patient record by NHI administration._
  * _name-information-source is required when name is present._
  * _name can only be set to a ‘Registered’ value by an authorised Agency._
  * _A Patient must not have more than 200 active names._



###Delete-contact Overview

* Allows an authorised user to replace a patients name on an NHI record.

<div>
{% include delete-contact.svg %}
</div>



**Delete-contact - Processing steps:**
 
1. The user provides the new patient name to replace a patients name on the NHI record.
2. The integrating application sends an HTTP Post request using the $replace-name operation to the NHI E.g. Post\<Endpoint>/Patient/$replace-name.
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned.
4. The updated patient record is returned with an HTTP 200 ok response.
5. The integrating application displays the updated patient details to the user.



<h4>Delete-contact - In Parameters </h4>
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

<tr><td> replace-id </td>
<td> valueInteger </td>
<td> Mandatory </td>
<td> The set id for the name to be replaced </td></tr>

<tr><td> use </td>
<td> valueString </td>
<td> Optional </td>
<td> The name use qualifier for a name </td></tr>

<tr><td> prefix </td>
<td> valueString </td>
<td> Optional </td>
<td> The name prefix </td></tr>

<tr><td> given-1 </td>
<td> valueString </td>
<td> Optional* </td>
<td> The first or given name </td></tr>

<tr><td> given-2 </td>
<td> valueString </td>
<td> Optional* </td>
<td> The middle or other given name/s </td></tr>

<tr><td> family </td>
<td> valueString </td>
<td> Optional* </td>
<td> The family name </td></tr>

<tr><td> preferred </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The attribute used to indicate whether the name is preferred or not </td></tr>

<tr><td> information-source </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The information source sighted when adding the name </td></tr>

<tr><td> nhi-name-use-extra </td>
<td> valueString </td>
<td> Optional </td>
<td> an attribute used to qualify pre-allocated and babyof names </td></tr>
</table>



#### Delete-contact - Behaviour
* The NHI is validated.
* The Patient version-id is validated.
* The name replace-id is validated.
* If all request parameters are valid the name in the request will replace the requested name in the NHI.
  * If the preferred boolean is set to TRUE in the request then the name is added as the preferred name.
  * If the preferred boolean is set to FALSE in the request then the name is added as a _non-preferred name_.

#### Delete-contact - Example request

```  
{
  "resourceType": "Parameters",
  "id": "example",
  "parameter": [
    {
        "name" : "nhi",
        "valueString" : "ZGD1407"
    },
    {
        "name" : "version-id",
        "valueString" : "3357591"
    },
    {
        "name" : "replace-id",
        "valueInteger" : 22
    },
    {
        "name" : "use",
        "valueString" : "nickname"
    },
    {
        "name" : "prefix",
        "valueString" : "mr"
    },
    {
        "name" : "given-1",
        "valueString" : "James"
    },
    {
        "name" : "given-2",
        "valueString" : "George Joseph"
    },
    {
        "name" : "family",
        "valueString" : "Granger"
    },
    {
        "name" : "preferred",
        "valueString" : "true"
    },
    {
        "name" : "information-source",
        "valueString" : "NPRF"
    }
  ]
}

```

#### Delete-contact - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Delete-contact rules
  * All [create patient name rules](/createPatient.html#create-patient-name-rules) apply, and
  * An replace-name request must contain:
    * the live NHI number for the Patient Record.
    * the version number of the current Patient Record.
    * the replace-id (set-id for name being replaced).
  * An update name request must not create a duplicate of an existing name for an NHI number [see glossary for name definitions](/glossary.html).
  * A request must not result in information, removed from a Patient Record by NHI Administration, being added (A name that has been deleted by HealthNZ cannot be added i.e. family name, given(1) and given(2) match a name with a ‘deleted’ status).
  * A request must not result in modification of information confirmed by authorised Agency (“registered” information).
  * A request must update the source of information only when the information is also provided.
  * An update which results in an attribute Status of Registered must only be submitted via an authorised Agency update.
  * A request may modify active patient information for which evidence has been sighted (“verified” information).
    * Can modify a verified source to another verified source or verified to Registered.
  * A Patient must have one, and only one, Active Name which is preferred.
  * An existing name must be active to be updated.
  * A non-preferred name may be made inactive (an inactive name is not returned in web service responses)
  * A Patient may have a maximum of 200 active Names.


---


* _Replace-name errors._
  * _Patient NHI and version number are required._
  * _Version number is incorrect._
  * _Patient Name Set ID provided is invalid or inactive_
  * _The name already exists for this patient._
  * _The name requested has been removed from the patient record by NHI administration._
  * _name-information-source is required when name is present._
  * _name can only be set to a ‘Registered’ value by an authorised Agency._
  * _A Patient must not have more than 200 active names._
  * _The patient name is not active and cannot be updated._
  * _Cannot update a source to a lower level of proof. Can modify a verified source to another verified source or verified to Registered._
  * _Information set to registered cannot be updated please contact NHI administration for more information._
 
 