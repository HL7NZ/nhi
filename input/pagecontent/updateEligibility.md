### Update Eligibility Overview

The update eligibility operation allows an authorised user to update citizenship on a person's identity record.

This includes:
* Citizenship
* Citizenship information source


<div>
{% include update-eligibility.svg %}
</div>

**Update-eligibility - Processing steps:**

1. The user provides patient details to be updated
2. The integrating application sends an HTTP Post request using the $update-eligibility operation to the NHI E.g. Post\<Endpoint>/Patient/$update-eligibility
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The provided patient attributes are updated
5. The updated record is returned with an HTTP 200 ok response
6. The integrating application displays the updated details to the user


<h4>Update-eligibility - In Parameters</h4>
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
<td> $update-eligibility </td></tr>

<tr><td> nhi </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The patients nhi number </td></tr>

<tr><td> version-id </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The current patient version number </td></tr>

<tr><td> nz-citizenship-status </td>
<td> valueString </td>
<td> Optional </td>
<td> The patients NZ citizenship status </td></tr>

<tr><td> nz-citizenship-source </td>
<td> valueString </td>
<td> Optional </td>
<td> The information source for the patients NZ citizenship status </td></tr>
</table>

#### Update-identity - Behaviour
  * The NHI is validated
  * The Patient version-id is validated
  * The parameters are validated
  * If all request parameters are valid, the attributes are updated on the NHI.


#### Update-eligibility - Example request

```  
{
  "resourceType": "Parameters",
  "id": "example",
  "parameter": [
    {
        "name" : "operation-type",
        "valueString" : "$update-eligibility"
    },
    {
        "name" : "nhi",
        "valueString" : "ZGD9203"
    },
    {
        "name" : "version-id",
        "valueString" : "3321540"
    },
    {
        "name" : "nz-citizenship-status",
        "valueString" : "unknown" 
    },
    {
        "name" : "nz-citizenship-source",
        "valueString" : "NPRF" 
    }
  ]
}
```

#### Update-eligibility - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Patient update-eligibility rules**
  * An update request must contain:
    * the live NHI number for the Patient Record.
    * the version number of the current Patient Record.
  * An update request may:
    * modify active patient information which is not ‘registered’ information.
    * modify active patient information for which evidence has been sighted (“verified” information). Can modify a verified source to another verified source or verified to Registered.
  * An update request which results in an attribute Status of Registered must only be submitted via an authorised Agency.
  * An update request to update the value for a core identity field must also update the information source.
  * An update request must update the source of information only when the information is also provided.


* _Patient update-eligibility errors_
  * _Patient NHI and version number are required_
  * _Version number is incorrect_
  * _The NHI Identifier provided is dormant. This record cannot be updated_
