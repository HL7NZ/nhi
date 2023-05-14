

### Update Name Overview

The update name operations allow an authorised user to update a name on a persons identity record.

The update has four sub-operations available:
* **Set-preferred-name – Set the Preferred Name the person wishes to be identied as**
* **Add-name – Add a new name to the set of Patient Names for this NHI record**
* **Replace-name – Replace a name that is currently on the patients NHI record**
* **Inactivate-name – Remove a name from the set of Patient Names returned to users**




### Set-preferred-name Overview

* Allows an authorised user to select the Preferred Name for this NHI number.



<div>
{% include set-preferred-name.svg %}
</div>



**Set-preferred-name - Processing steps:**
 
1. The user selects a patients name (that already exists on NHI) to become the new preferred name.
2. The integrating application sends an HTTP Post request using the $set-preferred-name operation to the NHI E.g. Post\<Endpoint>/Patient/$set-preferred-name.
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned.
4. The preferred name flag is set to false on the existing preferred name and true on the requested name.
5. The updated patient record is returned with an HTTP 200 ok response.
6. The integrating application displays the updated patient details to the user.



<h4>Set-preferred-name - In Parameters </h4>
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

<tr><td> operation-type </td>
<td> valueString </td>
<td> Mandatory </td>
<td> $set-preferred-name </td></tr>

<tr><td> nhi </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The patients nhi number </td></tr>

<tr><td> version-id </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The current patient version number </td></tr>

<tr><td> preferred-id </td>
<td> valueInteger </td>
<td> Mandatory </td>
<td> The id for the name that will be preferred </td></tr>
</table>



#### Set-preferred-name - Behaviour
  * The NHI is validated.
  * The Patient version-id is validated.
  * The name preferred-id is validated.
  * If all request parameters are valid the name.preferred boolean is set to TRUE on the requested name and FALSE on the current preferred name.


#### Set-preferred-name - Example request

```  
{
  "resourceType": "Parameters",
  "id": "example",
  "parameter": [
    {
        "name" : "operation-type",
        "valueString" : "$set-preferred-name"
    },
    {
        "name" : "nhi",
        "valueString" : "ZGD1407"
    },
    {
        "name" : "version-id",
        "valueString" : "3357591"
    },
    {
        "name" : "preferred-id",
        "valueInteger" : 6
    }
  ]
}

```

#### Set-preferred-name - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Set-preferred-name rules**
  * * An update request must contain:
    * the live NHI number for the Patient Record.
    * the version number of the current Patient Record.
    * the preferred-id.

* _Set-preferred-name errors._
  * _A valid NHI, preferred ID and version number are required._ 
  * _Patient Name Set ID provided is invalid or inactive._



### Add-name Overview

* Allows an authorised user to add a new name to the set of patient names for this NHI number.


<div>
{% include add-name.svg %}
</div>



**Add-name - Processing steps:**
 
1. The user provides the new patient name to be added to the patients NHI record.
2. The integrating application sends an HTTP Post request using the $add-name operation to the NHI E.g. Post\<Endpoint>/Patient/$add-name.
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned.
4. The updated patient record is returned with an HTTP 200 ok response.
5. The integrating application displays the updated patient details to the user.



<h4>Add-name - In Parameters </h4>
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

<tr><td> operation-type </td>
<td> valueString </td>
<td> Mandatory </td>
<td> $add-name </td></tr>

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



#### Add-name - Behaviour
  * The NHI is validated.
  * The Patient version-id is validated.
  * If all request parameters are valid the name is added to the NHI.
    * If the preferred boolean is set to TRUE in the request then the name is added as the preferred name and the current preferred name is set to FALSE.
    * If the preferred boolean is set to FALSE in the request then the name is added to the NHI and no changes occur to any names on the NHI.


#### Add-name - Example request

```  
{
  "resourceType": "Parameters",
  "id": "example",
  "parameter": [
    {
        "name" : "operation-type",
        "valueString" : "$add-name"
    },
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

#### Add-name - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Add-name rules**
  * All Add Patient [name rules](/addPatient.md#add-patient-name-rules) apply, and
  * An update request must contain:
    * the live NHI number for the Patient Record.
    * the version number of the current Patient Record.
  * An update name request must not create a duplicate of an existing name for an NHI number [see glossary for name definitions](/glossary.html)
  * A request must not result in information removed from a Patient Record by NHI Administration, being added (A name that has been deleted by HealthNZ cannot be added i.e. family name, given(1) and given(2) match a name with a ‘deleted’ status).
  * A request must update the source of information only when the information is also provided.
  * An update which results in an attribute Status of Registered must only be submitted via an authorised Agency update.
  * A Patient must have one, and only one, Active Name which is preferred.
  * A Patient may have a maximum of 200 active Names.

* _Add-name errors._
  * _Patient NHI and version number are required._
  * _Version number is incorrect._
  * _The name already exists for this patient._
  * _The name requested has been removed from the patient record by NHI administration._
  * _name-information-source is required when name is present._
  * _name can only be set to a ‘Registered’ value by an authorised Agency._
  * _A Patient must not have more than 200 active names._



### Replace-name Overview

* Allows an authorised user to replace a patients name on an NHI record.

<div>
{% include replace-name.svg %}
</div>



**Replace-name - Processing steps:**
 
1. The user provides the new patient name to replace a patients name on the NHI record.
2. The integrating application sends an HTTP Post request using the $replace-name operation to the NHI E.g. Post\<Endpoint>/Patient/$replace-name.
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned.
4. The updated patient record is returned with an HTTP 200 ok response.
5. The integrating application displays the updated patient details to the user.



<h4>Replace-name - In Parameters </h4>
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

<tr><td> operation-type </td>
<td> valueString </td>
<td> Mandatory </td>
<td> $replace-name </td></tr>

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



#### Replace-name - Behaviour
* The NHI is validated.
* The Patient version-id is validated.
* The name replace-id is validated.
* If all request parameters are valid the name in the request will replace the requested name in the NHI.
  * If the preferred boolean is set to TRUE in the request then the name is added as the preferred name.


#### Replace-name - Example request

```  
{
  "resourceType": "Parameters",
  "id": "example",
  "parameter": [
    {
        "name" : "operation-type",
        "valueString" : "$replace-name"
    },
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
        "valueString" : "Official"
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

#### Replace-name - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Replace-name rules**
  * All Add Patient [name rules](/addPatient.md#add-patient-name-rules) apply, and
  * An replace name update request must contain:
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
 
 

### Inactivate-name Overview

* Allows an authorised user to remove a name from the set of Patient Names returned to users


<div>
{% include inactivate-name.svg %}
</div>



**Inactivate-name - Processing steps:**
 
1. The user selects a patients name (that already exists on NHI) to become inactive.
2. The integrating application sends an HTTP Post request using the $inactivate-name operation to the NHI E.g. Post\<Endpoint>/Patient/$inactivate-name.
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned.
4. The name is made inactive on the patient record and is not returned on any future requests.
5. The updated patient record is returned with an HTTP 200 ok response.
6. The integrating application displays the updated patient details to the user.



<h4>Inactivate-name - In Parameters </h4>
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

<tr><td> operation-type </td>
<td> valueString </td>
<td> Mandatory </td>
<td> $inactivate-name </td></tr>

<tr><td> nhi </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The patients nhi number </td></tr>

<tr><td> version-id </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The current patient version number </td></tr>

<tr><td> inactivate-id </td>
<td> valueInteger </td>
<td> Mandatory </td>
<td> The id for the name to be made inactive on the patient record </td></tr>
</table>



#### Inactivate-name - Behaviour
  * The NHI is validated.
  * The Patient version-id is validated.
  * The inactivate-id is validated.
  * If all request parameters are valid the name is made inactive on the patient record and is not returned on future requests.


#### Inactivate-name - Example request

```  
{
  "resourceType": "Parameters",
  "id": "example",
  "parameter": [
    {
        "name" : "operation-type",
        "valueString" : "$inactivate-name"
    },
    {
        "name" : "nhi",
        "valueString" : "ZGD1407"
    },
    {
        "name" : "version-id",
        "valueString" : "3357591"
    },
    {
        "name" : "inactivate-id",
        "valueInteger" : 6
    }
  ]
}

```

#### Inactivate-name - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Inactivate-name rules**
  * * An Inactivate name update request must contain:
    * the live NHI number for the Patient Record.
    * the version number of the current Patient Record.
    * the inactivate-id (set-id for name being inactivated)
  * A request must not result in modification of information confirmed by authorised Agency (“registered” information).
  * A request may modify active patient information which is not ‘registered’ or verified’ information.
  * An existing name must be active to be updated

* _Inactivate-name errors._
  * _A valid NHI, preferred ID and version number are required._ 
  * _Patient Name Set ID provided is invalid or inactive._
  * _Information set to registered cannot be updated please contact NHI administration for more information._
  * _The Patient Name is not active and cannot be updated._
  * _A non-preferred name may be made inactive (an inactive name is not returned in web service responses)._


