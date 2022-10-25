

### Update Name Overview

The update name operations allow an authorised user to update a name on a persons identity record

Update name has four sub-operations available
* **set-preferred-name – Select the Preferred Name for this NHI number**
* **add-name – Add a new Name to the set of Patient Names for this NHI number**
* **update-name – Modify some of the information associated with a specific name**
* **inactivate-name – Remove a Name from the set of Patient Names returned to users**

### set-preferred-name

* Allows an authorised user to select the Preferred Name for this NHI number

<div>
{% include set-preferred-name.svg %}
</div>

**set-preferred-name processing steps:**
 
1. The user selects a patients name (that already exists on NHI) to become the new preferred name
2. The integrating application sends an HTTP Post request using the $set-preferred-name operation to the NHI E.g. Post\<Endpoint>/Patient/$set-preferred-name
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The preferred name flag is set to false on the existing preferred name and true on the requested name
5. The updated patient record is returned with an HTTP 200 ok response
6. The integrating application displays the updated patient details to the user


<h3> In Parameters </h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Parameter name </th>
<th> Mandatory / Optional </th>
<th> Description </th></tr>

<tr><td> nhi </td>
<td> Mandatory </td>
<td> The patients nhi number </td>></tr>

<tr><td> version-id </td>
<td> Mandatory </td>
<td> The current patient version number </td></tr>

<tr><td> preferred-id </td>
<td> Mandatory </td>
<td> The id for the name to set the preferred name flag against </td></tr>
</table>


* Behaviour:
  * The NHI is validated
  * The Patient version-id is validated
  * The name preferred-id is validated
  * If all request parameters are valid the name.preferred boolean is set to TRUE on the requested name and FALSE on the current preferred name


set-preferred-name example request:

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
        "name" : "preferred-id",
        "valueInteger" : 6
    }
  ]
}

```

#### set-preferred-name Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Patient set-preferred-name rules**

* _Patient set-preferred-name errors_



### add-name 

**TBC**

* Allows an authorised user to add a new Name to the set of Patient Names for this NHI number

### update-name

**TBC**

* Allows an authorised user to modify some of the information associated with a specific name

### inactivate-name 

**TBC**

* Allows an authorised user to remove a Name from the set of Patient Names returned to users
