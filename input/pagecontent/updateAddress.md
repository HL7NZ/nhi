

### Update Address Overview

The update address operations allow an authorised user to update a persons address on a persons identity record

Update address has three sub-operations available:
* set-address -  Allows a user to replace a physical address OR add or replace a postal address with an eSAM validated address
* set-unvalidated-address - Allows a user to replace a physical or add or replace a postal address with an unvalidated address
* remove-postal-address - Allows a user to remove a postal adddress from a persons identity record.


#### set-address

* Allows a user to replace a physical address OR add or replace a postal address with an eSAM validated address

<h3>In Parameters</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Parameter name</th>
<th>Mandatory / Optional</th>
<th>Description</th></tr>

<tr><td>nhi</td>
<td>Mandatory</td>
<td>The patients nhi number</td>></tr>

<tr><td>version-id</td>
<td>Mandatory</td>
<td>The current patient version number</td></tr>

<tr><td>address-type</td>
<td>Mandatory</td>
<td>postal or physical</td>></tr>

<tr><td>nz-address-id</td>
<td>Mandatory</td>
<td>eSAM validated address id</td>></tr>

<tr><td>address-line</td>
<td>Mandatory</td>
<td>first line of the address as returned by eSAM</td>></tr>

<tr><td>address-building-name</td>
<td>Optional</td>
<td></td>></tr>
</table>

* Behaviour:
  * The NHI is validated
  * The Patient versionId is validated
  * The parameters are validated
  * The eSAM details are retrieved for the address-id supplied
  * If the eSAM address returned matches the address-line supplied, the new address is added to the NHI and the existing address made inactive


See set-address example below:

```  
{
  "resourceType": "Parameters",
  "id": "example",
  "parameter": [
    {
        "name" : "nhi",
        "valueString" : "ZAD2481"
    },
    {
        "name" : "version",
        "valueInteger" : 19232
    },
     {
        "name" : "address-type",
        "valueString" : "postal"
    },
 {
        "name" : "nz-address-id",
        "valueString" : "1112139"
    },
    {
        "name" : "address-line",
        "valueString" : "67 nowhere street"
    }
  ]
}

```

<div>
{% include set-address.svg %}
</div>

set-address processing steps:
 
1. The user provides details for a new address to add
2. The system requests address validation from the address validation service
3. eSAM returns a validated address - Alt: Address not found
4. The integrating application sends an HTTP Post request using the $set-address operation to the NHI E.g. Post\<Endpoint>/Patient/$set-address
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The new address is added to the NHI and the existing address made inactive
5. The updated patient record is returned with an HTTP 200 ok response
6. The integrating application displays the updated patient details to the user

##### set-address Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Patient set-address rules**

* _Patient set-address errors_



#### set-unvalidated-address

* Allows a user to replace a physical or add or replace a postal address with an unvalidated address

<h3>In Parameters</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Parameter name</th>
<th>Mandatory / Optional</th>
<th>Description</th></tr>

<tr><td>nhi</td>
<td>Mandatory</td>
<td>The patients nhi number</td>></tr>

<tr><td>version-id</td>
<td>Mandatory</td>
<td>The current patient version number</td></tr>

<tr><td>address-type</td>
<td>Mandatory</td>
<td>postal or physical</td>></tr>

<tr><td>not-validated-address-reason</td>
<td>Mandatory</td>
<td></td>></tr>

<tr><td>address-building-name</td>
<td>Optional</td>
<td></td>></tr>

<tr><td>address-line (1)</td>
<td>Mandatory</td>
<td>first line of the address</td>></tr>

<tr><td>address-line (2)</td>
<td>Optional</td>
<td>second line of the address</td>></tr>

<tr><td>suburb</td>
<td>Optional</td>
<td></td>></tr>

<tr><td>city</td>
<td>Optional</td>
<td></td>></tr>

<tr><td>postal-code</td>
<td>Optional</td>
<td></td>></tr>

<tr><td>country-code</td>
<td>Optional</td>
<td></td>></tr>

<tr><td>domicile-code</td>
<td>Optional</td>
<td></td>></tr>

<tr><td>nz-geocode</td>
<td>Optional</td>
<td>datum-code, latitude, longitude</td>></tr>
</table>

* Behaviour:
  * The NHI is validated
  * The Patient versionId is validated
  * The parameters are validated
  * If domicile code supplied this is added to address, if not supplied the suburb and city are used to derive a domicile code from the streets file. If a suburb/city combination is not found in the streets file an error is returned
  * With a succcesful address add, the new address is added to the NHI and the existing address made inactive


See set-unvalidated-address example below:

```  
{
  "resourceType": "Parameters",
  "id": "example",
  "parameter": [
    {
        "name" : "nhi",
        "valueString" : "ZAD2481"
    },
    {
        "name" : "version",
        "valueInteger" : 19232
    },
     {
        "name" : "not-validated-address-reason",
        "valueString" : "OSEA"
    },
{
        "name" : "address-type",
        "valueString" : "physical"
    },
 {
        "name" : "address-building-name",
        "valueString" : "Building 11"
    },
    {
        "name" : "address-line",
        "valueString" : "67 nowhere street"
    },
 {
        "name" : "address-suburb",
        "valueString" : "darksideodthetracks"
    },
 {
        "name" : "address-city",
        "valueString" : "darkside"
    },
 {
        "name" : "address-postal-code",
        "valueString" : "60606"
    },
     {
        "name" : "address-country-code",
        "valueString" : "NZ"
    }
  ]
}

```

<div>
{% include set-unvalidated-address.svg %}
</div>

set-unvalidated-address processing steps:
 
1. The user provides details for a new address to add
2. The integrating application sends an HTTP Post request using the $set-unvalidated-address operation to the NHI E.g. Post\<Endpoint>/Patient/$set-unvalidated-address
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The new address is added to the NHI and the existing address made inactive
5. The updated patient record is returned with an HTTP 200 ok response
6. The integrating application displays the updated patient details to the user


##### set-unvalidated-address Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Patient set-unvalidated-address rules**

* _Patient set-unvalidated-address errors_


#### remove-postal-address

* Allows a user to remove a postal adddress from a persons identity record.

<h3>In Parameters</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Parameter name</th>
<th>Mandatory / Optional</th>
<th>Description</th></tr>

<tr><td>nhi</td>
<td>Mandatory</td>
<td>The patients nhi number</td>></tr>

<tr><td>version-id</td>
<td>Mandatory</td>
<td>The current patient version number</td></tr>
</table>

* Behaviour:
  * The NHI is validated
  * The Patient versionId is validated
  * The postal address on the nhi record is made inactive

See remove-postal-address example below:

```  
{
  "resourceType": "Parameters",
  "id": "example",
  "parameter": [
    {
        "name" : "nhi",
        "valueString" : "ZAD2481"
    },
    {
        "name" : "version",
        "valueInteger" : 19232
    }
  ]
}

```

<div>
{% include remove-postal-address.svg %}
</div>

remove-postal-address processing steps:
 
1. The user requests to remove a postal address
2. The integrating application sends an HTTP Post request using the $remove-postal-address operation to the NHI E.g. Post\<Endpoint>/Patient/$remove-postal-address
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The postal address is made inactive
5. The updated patient record is returned with an HTTP 200 ok response
6. The integrating application displays the updated patient details to the user

##### remove-postal-address Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Patient remove-postal-address rules**

* _Patient remove-postal-address errors_