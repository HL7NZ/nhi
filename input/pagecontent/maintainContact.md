

### Maintain Contact Overview

The maintain  contact operations allow an authorised user to maintain a person's contact information on their identity record.

Three operations are available:
* **add-contact –Add a contact to a patient's NHI record**
* **replace-contact – Replace a contact on a patient's NHI record**
* **delete-contact – Delete a contact from a patient's NHI record**



### Add-contact Overview

* Allows an authorised user to add a contact to a patient's NHI record



<div>
{% include add-contact.svg %}
</div>



#### Add-contact  - Processing steps:
 
1. The user provides the new contact details to be added to the patient's NHI record
2. The integrating application sends an HTTP Post request using the $add-contact operation to the NHI E.g.`Post <Endpoint>/Patient/$add-contact`
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned.
4. The updated patient record is returned with an HTTP 200 ok response.
5. The integrating application displays the updated patient details to the user.



<h3> Add-contact - In Parameters </h3>

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
<td> The patient's nhi number </td></tr>

<tr><td> version-id </td>
<td> valueString </td>
<td> Mandatory </td>
<td> The current patient version number </td></tr>

<tr><td> use </td>
<td> valueString </td>
<td> Optional </td>
<td> home or mobile </td></tr>

<tr><td> system </td>
<td> valueString </td>
<td> Mandatory </td>
<td> phone or email</td></tr>

<tr><td> value </td>
<td> valueString </td>
<td> Mandatory </td>
<td> the phone number or email address</td></tr>


<tr><td> isVerified </td>
<td> valueBoolean </td>
<td> Optional </td>
<td>Verification has  been performed to determine that the email or phone number can be used to communicate with the patient (true or false)</td></tr>


<tr><td> isShared </td>
<td> valueBoolean </td>
<td> Optional </td>
<td>The email address or phone number is shared with other people (true or false)</td></tr>

<tr><td> isPrivate </td>
<td> valueBoolean </td>
<td> Optional </td>
<td>The email address or phone number may be used to communicate private health information about the individual identified by the NHI</td></tr>


<tr><td> context </td>
<td> valueString </td>
<td> Optional </td>
<td>Additional information about the context of use of this contact</td></tr>

</table>



#### Add-contact - Behaviour
  * The NHI is validated.
  * The Patient version-id is validated.
  * The contact details are  validated.
  * If all request parameters are valid the contact details are updated on the NHI

#### Add-contact - Example request
  
[add-contact request](/Parameters-AddContact.html) 


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
2. The integrating application sends an HTTP Post request using the $add-name operation to the NHI E.g. `Post <Endpoint>/Patient/$replace-contact`
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

<tr><td> contact-id </td>
<td> valueInteger </td>
<td> Mandatory </td>
<td> The id of the contact element to be replaced </td></tr>


<tr><td> use,system,value,isVerified,isShared,context</td>

<td colspan="3" > as per  <a href="#add-contact-in-parameters"> Add-contact - In Parameters</a>  </td></tr>
</table>



#### Replace-contact - Behaviour
  * The NHI is validated.
  * The Patient version-id is validated.
  * If all request parameters are valid the old contact is replaced by the new contact.
 

#### Replace-contact- Example request

[replace-contact request](/Parameters-ReplaceContact.html) 


#### Replace-contact - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Replace-contact rules
  * All [add-contact rules](/updateContact.html#add-contact---rules-and-errors) apply, and
  * An replace-contact request must contain:
    * the live NHI number for the Patient Record.
    * the version number of the current Patient Record.
  

---


* _Replace Contact errors._
  * _Patient NHI and version number are required._
  * _Version number is incorrect._
  * _The contact-id does not exists for this patient._
  
  



### Delete-contact Overview

* Allows an authorised user to delete a patient's contact from the NHI record.

<div>
{% include delete-contact.svg %}
</div>



**Delete-contact - Processing steps:**
 
1. The user provides the id of the contact to be deleted from the NHI E.g. Post\<Endpoint>/Patient/$delete-contact.
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

<tr><td> contact-id </td>
<td> valueInteger </td>
<td> Mandatory </td>
<td> The id of the contact to be deleted </td></tr>

</table>



#### Delete-contact - Behaviour
* The NHI is validated.
* The Patient version-id is validated.
* The  contact-id is validated.
* If all request parameters are valid the contact identified in the request will be deleted from the NHI.


#### Delete-contact - Example request

[delete-contact request](/Parameters-DeleteContact.html) 


#### Delete-contact - Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Delete-contact rules
  
  * An delete-contact request must contain:
    * the live NHI number for the Patient Record.
    * the version number of the current Patient Record.
    * the contact-id of the contact to be deleted
  
---


* _Delete contact errors._
  * _Patient NHI and version number are required._
  * _Version number is incorrect._
  * _The contact-id does not exists for this patient._
  
 