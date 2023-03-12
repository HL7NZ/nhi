

### Update Identity

The update identity operations allow an authorised user to update a persons self-identified attributes on a persons identity record

### Update-identity

<div>
{% include update-identity.svg %}
</div>

**Update-identity - Processing steps:**

1. The user provides patient details to be updated
2. The integrating application sends an HTTP Post request using the $update-identity operation to the NHI E.g. Post\<Endpoint>/Patient/$update-identity
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The provided patient attributes are updated
5. The updated record is returned with an HTTP 200 ok response
6. The integrating application displays the updated details to the user


<h4>Update-identity - In Parameters</h4>
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

<tr><td> ethnicity </td>
<td> valueString </td>
<td> Optional </td>
<td> The patients ethnicity <br /> May contain up to six </td></tr>

<tr><td> gender </td>
<td> valueString </td>
<td> Optional </td>
<td> The patients gender code </td></tr>

<tr><td> gender-original-text </td>
<td> valueString </td>
<td> Optional </td>
<td> The text response provided by the patient </td></tr>
</table>

#### Update-identity - Behaviour
  * The NHI is validated
  * The Patient version-id is validated
  * The parameters are validated
  * If all request parameters are valid, the attributes are updated on the NHI.


#### Update-identity - Example request

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
        Ethnicity - TBC
    },
    {
        Gender - TBC
    },
    {
        Gender-original-textEthnicity - TBC
    }
  ]
}

```

#### Update-identity - Rules and errors
  
[For Request rules and errors click here](/general.html#request-rules-and-errors)


* **Patient update-identity rules**
  * All add Patient ethnicity and gender rules appy, and
  * A update request must contain
    * the live NHI number for the Patient Record
    * the version number of the current Patient Record, and
  * A update request must not delete/inactivate mandatory information.
  * A update request may:
    * Populate the request parameter with the required value(s) to modify the existing NHI value for that parameter
    * Not populate the request parameter to retain the existing NHI value for that parameter

  * Update-identity Gender rules
    * All add rules apply and,
    * An update request will replace the current gender or gender original text.
  
  * Update-identity Gender rules
    * All add rules apply and,
    * A full set of ethnicities is required for an update and will replace the current set.

* _Patient update-identity errors_
  * _Patient NHI and version number are required_
  * _Version number is incorrect_
  * _A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code_
