

### Update Address Overview

The update address operations allow an authorised user to update a persons address on a persons identity record

Update address has three sub-operations available:
* **Set-address** -  Allows a user to replace a physical address OR add or replace a postal address with an eSAM validated address
* **Set-unvalidated-address** - Allows a user to replace a physical or add or replace a postal address with an unvalidated address
* **Remove-postal-address** - Allows a user to remove a postal adddress from a persons identity record.


### Set-address

* Allows a user to replace a physical address OR add or replace a postal address with an eSAM validated address

<div>
{% include set-address.svg %}
</div>

**Set-address - Processing steps:**
 
1. The user provides details for a new address to add
2. The system requests address validation from the address validation service
3. eSAM returns a validated address - Alt: Address not found
4. The integrating application sends an HTTP Post request using the $set-address operation to the NHI E.g. Post\<Endpoint>/Patient/$set-address
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The new address is added to the NHI and the existing address made inactive
5. The updated patient record is returned with an HTTP 200 ok response
6. The integrating application displays the updated patient details to the user


<h4>Set-address - In Parameters</h4>
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

<tr><td> address-type </td>
<td> valueString </td>
<td> Mandatory </td>
<td> postal or physical </td></tr>

<tr><td> nz-address-id </td>
<td> valueString </td>
<td> Mandatory </td>
<td> eSAM validated address id </td></tr>

<tr><td> address-line </td>
<td> valueString </td>
<td> Mandatory </td>
<td> first line of the address as returned by eSAM </td></tr>

<tr><td> address-building-name </td>
<td> valueString </td>
<td> Optional </td>
<td> The building name, this is additional information and is not returned as part of the eSAM address </td> </tr>
</table>

#### Set-address - Behaviour
  * The NHI is validated
  * The Patient version-id is validated
  * The parameters are validated
  * The eSAM details are retrieved for the nz-address-id supplied
  * If the eSAM address returned matches the address-line supplied, the new address is added to the NHI and the existing address made inactive


#### Set-address - Example request

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
        "name" : "address-type",
        "valueString" : "physical"
    },
    {
        "name" : "nz-address-id",
        "valueString" : "2843216"
    },
    {
        "name" : "address-line",
        "valueString" : "20 Aitken Street"
    },
        {
        "name" : "address-building-name",
        "valueString" : "Freyberg House"
    }
  ]
}

```



#### Set-address - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Patient set-address rules
* All [create patient address rules apply](/createPatient.html#create-patient-address-rules), and
* A Patient Update request must contain the live NHI number for the Patient Record
* A system must source the most recent Patient Record from the NHI before creating a request to update the Patient record
* A request must not result in information, removed from a Patient Record by the NHI Administration team being added


---


* _Patient set-address errors_
  * _Patient NHI, version number, address type and address-id are all required_
  * _Version number is incorrect_
  * _address type must be a postal or physical_
  * _address-line must match the espatial value: \<value>_



### Set-unvalidated-address
 
* Allows a user to replace a physical or add or replace a postal address with an unvalidated address

<div>
{% include set-unvalidated-address.svg %}
</div>

**Set-unvalidated-address - Processing steps:**
 
1. The user provides details for a new address to add
2. The integrating application sends an HTTP Post request using the $set-unvalidated-address operation to the NHI E.g. Post\<Endpoint>/Patient/$set-unvalidated-address
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The new address is added to the NHI and the existing address made inactive
5. The updated patient record is returned with an HTTP 200 ok response
6. The integrating application displays the updated patient details to the user


<h4>Set-unvalidated-address - In Parameters</h4>
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

<tr><td> not-validated-address-reason </td>
<td> valueString </td>
<td> Mandatory </td>
<td></td> </tr>

<tr><td> address-type </td>
<td> valueString </td>
<td> Mandatory </td>
<td> postal or physical</td> </tr>

<tr><td> address-building-name </td>
<td> valueString </td>
<td> Optional </td>
<td></td> </tr>

<tr><td> address-line-1 </td>
<td> valueString </td>
<td> Mandatory </td>
<td> first line of the address </td></tr>

<tr><td> address-line-2 </td>
<td> valueString </td>
<td> Optional </td>
<td> second line of the address</td></tr>

<tr><td> address-suburb </td>
<td> valueString </td>
<td> Optional </td>
<td></td> </tr>

<tr><td> address-city </td>
<td> valueString </td>
<td> Optional </td>
<td></td> </tr>

<tr><td> address-postal-code </td>
<td> valueString </td>
<td> Optional </td>
<td></td> </tr>

<tr><td> address-country-code </td>
<td> valueString </td>
<td> Optional </td>
<td></td> </tr>

<tr><td> address-domicile-code </td>
<td> valueString </td>
<td> Optional* </td>
<td>See future functionality below</td> </tr>
</table>

#### Future functionality for Domicile code
* If domicile code supplied this is added to the address, if not supplied the suburb and city are used to derive a domicile code from the streets file. If a suburb/city combination is not found in the streets file an error is returned.
* For now domicile code is currently mandatory.

#### Set-unvalidated-address - Behaviour
  * The NHI is validated
  * The Patient versionId is validated
  * The parameters are validated
  * With a succcesful address add, the new address is added to the NHI and the existing address made inactive


#### Set-unvalidated-address - Example request

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
        "name" : "version-id",
        "valueString" : "19232"
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
        "name" : "address-line-1",
        "valueString" : "67 nowhere street"
    },
    {
        "name" : "address-line-2",
        "valueString" : "nowhere"
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


#### Set-unvalidated-address - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Patient set-unvalidated-address rules
  * All [create patient address rules apply](/createPatient.html#create-patient-address-rules), and
  * A Patient Update request must contain the live NHI number for the Patient Record
  * A system must source the most recent Patient Record from the NHI before creating a request to update the Patient record
  * A request must not result in information, removed from a Patient Record by the NHI Administration team being added


---


* _Patient set-unvalidated-address errors_
  * _Patient NHI, version number, address type and address-id are all required_
  * _Version number is incorrect_
  * _address type must be a postal or physical_
  * _address-line must match the espatial value: \<value>_


### Remove-postal-address

* Allows a user to remove a postal adddress from a persons identity record.

<div>
{% include remove-postal-address.svg %}
</div>

**Remove-postal-address - Processing steps:**
 
1. The user requests to remove a postal address
2. The integrating application sends an HTTP Post request using the $remove-postal-address operation to the NHI E.g. Post\<Endpoint>/Patient/$remove-postal-address
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The postal address is made inactive
5. The updated patient record is returned with an HTTP 200 ok response
6. The integrating application displays the updated patient details to the user


<h4>Remove-postal-address - In Parameters</h4>
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
</table>

#### Remove-postal-address - Behaviour
  * The NHI is validated
  * The Patient version-id is validated
  * The postal address on the nhi record is made inactive

#### Remove-postal-address - Example request

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
        "name" : "version-id",
        "valueString" : "19232"
    }
  ]
}

```


#### Remove-postal-address - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Patient remove-postal-address rules
* All [create patient address rules apply](/createPatient.html#create-patient-address-rules), and
* A Patient Update request must contain the live NHI number for the Patient Record
* A system must source the most recent Patient Record from the NHI before creating a request to update the Patient record


---


* _Patient remove-postal-address errors_
  * _Patient NHI, version number, address type and address-id are all required_
  * _Version number is incorrect_
