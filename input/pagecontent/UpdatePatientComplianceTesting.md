


<h4>NHI Patient Maintain Address tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption> For the NHI Maintain 'address' tests. Please select one of the following NHI numbers and use this for all tests unless stated otherwise <br />
ZAY5549, ZAY5557, ZAY5565, ZAY5573, ZAY5581 </caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>NHI-Maintain-Address-1</td>
<td>application can replace the <b> primary residential address </b> on a patient record with a validated address </td>
<td><li>Use selected NHI number</li>
<li>Locate a validated address to use (this can be done using https://www.nzpost.co.nz/tools/address-postcode-finder) or use Health_UI </li>
<li>Add a new <b> primary residential address </b> to the patient record using the set-addresss operation</li></td>
<td>Input: Application can validate an address via e-SAM (using suggest or search)<br />
Input: An address request can be populated with appropriate information<br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-2</td>
<td>application can add (or replace) the <b> postal address </b> on a patient record with a validated address</td>
<td><li>Use selected NHI number</li>
<li>Locate a validated address to use (this can be done using https://www.nzpost.co.nz/tools/address-postcode-finder) or use Health_UI </li>
<li>Add a new <b> postal address </b> to the patient record using the set-addresss operation</li></td>
<td>Input: Application can validate an address via e-SAM (using suggest or search)<br />
Input: An address request can be populated with appropriate information<br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-3</td>
<td>application can replace the <b> primary residential address </b> on a patient record with an <b> overseas </b> unvalidated address </td>
<td><li>Use selected NHI number</li>
<li>Add a new <b> primary residential address </b> to the patient record using the set-unvalidated-address operation </li></td>
<td>Input: An address request can be populated with overseas unvalidated address information <br />
Output: The address that is displayed to the end user is the address that is returned in the update response </td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-4</td>
<td>application can replace the <b> primary residential address </b> on a patient record with an:
<li> <b> 'unknown' unvalidated address </b> </li>
<li> <b> 'no fixed abode' unvalidated address </b> </li>
<li> <b> 'other' unvalidated address </b> </li> </td>
<td> <li> Use selected NHI number</li>
<li>Add a new <b> primary residential address </b> to the patient record using the $set-unvalidated-address operation</li>
<b>Do ALL</b>
<li> <b> 'unknown' unvalidated address </b> </li>
<li> <b> 'no fixed abode' unvalidated address </b> </li>
<li> <b> 'other' unvalidated address </b></li> </td>
<td>Input: An address request can be populated with unvalidated address information <br />
Input: Best Practice is followed for adding addresses <a href="https://www.health.govt.nz/system/files/documents/pages/identity-nhi-user-reference-information-best-practice-advice-sep21_8.pdf" target="_blank">Best Practice Guide</a> <br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-5</td>
<td>application can replace the <b> primary residential address </b> on a patient record with an <b> Address Service Unavailable </b> unvalidated address </td>
<td><li>Use selected NHI number</li>
<li> Disable the external Address Service lookup</li>
<li> Show Address Service error </li>
<li> Add a new <b> primary residential address </b> to the patient record using the <a href="updateAddress.html">$set-unvalidated-address</a></li></td>
<td>Input: An address request can be populated with NOSVC unvalidated address information<br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-6</td>
<td>application can replace the <b>postal address</b> on a patient record with an <b>Address Service Unavailable</b> unvalidated address</td>
<td><li>Use selected NHI number</li>
<li> Disable the external Address Service lookup</li>
<li> Show Address Service error </li>
<li> Add a new <b>postal address</b> to the patient record using the $set-unvalidated-address operation</li></td>
<td>Input: An address request can be populated with NOSVC unvalidated address information <br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-7</td>
<td>application can replace the <b>postal address</b> on a patient record with an <b>Overseas</b> unvalidated address</td>
<td><li>Use selected NHI number</li>
<li> Add a new <b>postal address</b> to the patient record using the $set-unvalidated-address operation</li></td>
<td>Input: An address request can be populated with overseas unvalidated address information <br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-8</td>
<td>application can remove the <b>postal address</b> on a patient record</td>
<td><li>Use selected NHI number</li>
<li> Remove the <b>postal address</b> from the patient record using the $remove-postal-address operation</li></td>
<td>Output: The patient record has Postal address removed</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-9</td>
<td>application can add an unvalidated address with a building name </td>
<td><li>Use selected NHI number</li>
<li> Add a new <b>physical address</b> to the patient record using the $set-unvalidated-address operation</li></td>
<td>Input: An address can be populated with a building name<br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-10</td>
<td>application can add a validated address with a building name</td>
<td><li>Use selected NHI number</li>
<li> Add a new <b>physical address</b> to the patient record using the $set-address operation</li></td>
<td>Input: An address can be populated with a building name<br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-error-1 <br /> $set-address</td>
<td>Application will show the correct error when attempting to add a new address to the provided dormant NHI number</td>
<td>
 <ul>
  <li> NHI: ZAT2518 </li>
  <li> address-line: 24 Anglesey Place  </li>
  <li> nz-address-id: 1199146 </li>
  <li> address-type: physical</li>
 </ul>
</td>
<td>Error: EM02004 - The NHI Identifier provided is dormant. This record cannot be updated</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Maintain-Address-error-2  <br /> $set-address</td>
<td><b>Not currently implemented</b> <br />
Application will show the correct error when attempting to add the supplied address that has been previously removed from the patient record by NHI administration</td>
<td>
 <ul>
  <li> NHI: ZJM9397 </li>
  <li> address-line: 24 Anglesea Avenue </li>
  <li> nz-address-id: 967406 </li>
  <li> address-type: physical</li>
 </ul>
</td>
<td>Error: EM02004 - The Patient Address requested has been removed from the Patient record by Te Whatu Ora </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Maintain-Address-error-3  <br /> $set-address</td>
<td>Application will show the correct error when attempting to add the following postal address for an undeliverable address</td>
<td>
 <ul>
  <li> NHI: ZJM9397 </li>
  <li> address-line: 748E Whitemans Valley Road </li>
  <li> nz-address-id: 3193368 </li>
  <li> address-type: postal</li>
 </ul>
</td>
<td>Error: EM02209 - A validated mailing address must be an address at which mail can be delivered </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Maintain-Address-error-4 <br /> $set-address</td>
<td>Application will show the correct error when attempting to add an address where the nz address id does not match the first line of the validated address</td>
<td>
 <ul>
  <li> NHI: ZJM9397 </li>
  <li> address-line: 24 Ranglesey Place </li>
  <li> nz-address-id: 1199146 </li>
  <li> address-type: physical</li>
 </ul>
</td>
<td> Error: "address-line must match the espatial value: ..."  </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Maintain-Address-error-5 <br /> $set-unvalidated-address</td>
<td>Application will show the correct error when attempting to add the following unvalidated address without a domicile code</td>
<td>
 <ul>
  <li> NHI: ZJM9397 </li>
  <li> not-validated-address-reason: NOSVC </li>
  <li> address-type: physical </li>
  <li> address-line-1: 74 Chancellor Street" </li>
  <li> address-suburb: Richmond </li>
  <li> address-city: Christchurch </li>
  <li> address-country-code: NZ </li>
 </ul>
</td>
<td>Error: "Invalid codeset value" <br />
This will be updated in an upcming release - EM02210 - An unvalidated residential address must have a notional domicile code</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Maintain-Address-error-6 <br /> $set-unvalidated-address</td>
<td>Application will show the correct error when attempting to add an address with invalid characters to the supplied patient</td>
<td>
 <ul>
  <li> NHI: ZJM9397 </li>
  <li> not-validated-address-reason: OTHER </li>
  <li> address-type: physical </li>
  <li> address-line-1: 11 L$nnet Street </li>
  <li> address-suburb: Taihape </li>
  <li> address-city: Taihape </li>
  <li> address-domicile-code: 4720 </li>
  <li> address-country-code: NZ </li>
 </ul>
</td>
<td>Error: "Invalid request body"</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Maintain-Address-error-7 <br /> $set-unvalidated-address</td>
<td>Application will show the correct error when attempting to add an address that does not contain address line 1 </td>
<td>
 <ul>
  <li> NHI: ZJM9397 </li>
  <li> not-validated-address-reason: OTHER </li>
  <li> address-type: physical </li>
  <li> address-line-2: 11 Linnet Street </li>
  <li> address-suburb: Taihape </li>
  <li> address-city: Taihape </li>
  <li> address-domicile-code: 4720 </li>
  <li> address-country-code: NZ </li>
 </ul>
</td>
<td>Error: "Patient address-line-1 is required"</td>
<td>Optional</td></tr>

<tr><td>NHI-Maintain-Address-error-8 <br /> $set-unvalidated-address</td>
<td>Application will show the correct error when attempting to add an address missing a not validated reason</td>
<td>
 <ul>
  <li> NHI: ZJM9397 </li>
  <li> address-type: physical </li>
  <li> address-line-1: 11 Linnet Street </li>
  <li> address-suburb: Taihape </li>
  <li> address-city: Taihape </li>
  <li> address-domicile-code: 4720 </li>
  <li> address-country-code: NZ </li>
 </ul>
</td>
<td>Error: "Address not validated reason is required"</td>
<td>optional</td></tr>
</table>

<h4>NHI Patient Maintain Name tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption> For the NHI Maintain 'name' tests. Please select one of the following NHI numbers and use this for all tests unless stated otherwise <br />
ZAY5549, ZAY5557, ZAY5565, ZAY5573, ZAY5581 </caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>
   
<tr><td>NHI-$add-name-1</td>
<td>application can add a name to a patient record</td>
<td>Add a name to the selected NHI from list above with:
<li>a family name; and</li>
<li>a given name; and</li>
<li>one or more other given name(s); and</li>
<li>preferred set to true; and</li>
<li>name use 'nickname'; and</li>
<li>a name prefix; and</li>
<li>a name source (e.g. a passport – ‘PPRT’)</li></td>
<td>Input:
 <li>A fictitious name with name parts described can be added to the patient record</li>
Output:
 <li>The name is presented to the user with appropraite name parts populated</li></td>
<td>mandatory</td></tr>

<tr><td>NHI-$add-name-2</td>
<td>application can add a name to a patient record</td>
<td>Add a name to the selected NHI from list above with:
<li>a family name only (no given name); and</li>
<li>preferred set to false; and</li>
<li>a name source (e.g. a birth certificate – ‘BRCT’)</li></td>
<td>Input:
 <li> A fictitious name with name parts described can be added to the patient record </li>
Output:
 <li> The name is presented to the user with appropraite name parts populated </li></td>
<td>mandatory</td></tr>

<tr><td>NHI-$add-name-3</td>
<td>application can add a name to a patient record</td>
<td>Add a name to the selected NHI from list above with:
<li>a given name only (no family name); and</li>
<li>preferred set to false; and</li>
<li>a name source (e.g. a birth certificate – ‘BRCT’)</li></td>
<td>Input:
 <li> A fictitious name with name parts described can be added to the patient record </li>
Output:
 <li> The name is presented to the user with appropraite name parts populated </li></td>
<td>mandatory</td></tr>

<tr><td>NHI-$replace-name-1</td>
<td>application can replace a name with the patients preferred name</td>
<td>Replace a non-preferred name on a selected NHI from list above with a fictitious name that includes:
<li>a family name; and</li>
<li>a given name; and</li>
<li>one or more other given name(s); and</li>
<li>preferred set to true; and</li>
<li>name use 'maiden'; and</li>
<li>a name prefix; and</li>
<li>a name source (e.g. a passport – ‘PPRT’)</li></td>
<td>Input:
 <li> A name can be replaced with a fictitious name </li>
Output:
 <li> The preferred name that is displayed to the end user is the name that was selected in the operation with all name parts </li>
 <li> The replaced name is not returned to the user</li></td>
<td>mandatory</td></tr>

<tr><td>NHI-$inactivate-name-1</td>
<td>application can inactivate a patients name</td>
<td>Inactivate an unverified, non-preferred name on a selected NHI from list above</td>
<td>Input:
 <li> Use $inactivate-name operation</li>
Output:
 <li> The selected name is made inctive and not returned to the user</li></td>
<td>mandatory</td></tr>

<tr><td>NHI-$set-preferred-name-1</td>
<td>application can set the patients preferred name</td>
<td>
 <li>Use NHI number ZAY5581</li>
 <li>Do a Get Patient request to see active patient names</li>
 <li>Change the preferred name from the current name to another active name for the patient</li></td>
<td>Input:
 <li> An application can select a Patients preferred name from the active names list </li>
Output:
 <li> The preferred name that is displayed to the end user is the name that was selected in the operation</li>
 <li> The name is presented to the user with all name parts</li></td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-1 <br /> $add-name </td>
<td>application can display an error when the patient version is not current</td>
<td>
 <li>Requires two users to update a name on the provided patient record</li>
 <li>Use selected NHI number</li>
 <li>User one retrieves a patient record (to retrieve the current patient version) and starts adding a name to the record and then pauses</li>
 <li>User two retrieves the patient record and adds a fictitious name to the record</li>
 <li>User one then completes their update to the name and should receive the error message</li></td>
<td>Output: EM02007 "Version number is incorrect"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-2 <br /> $add-name </td>
<td>application can display an error when the NHI provided is dormant</td>
<td>Attempt to add a fictitious name to NHI ZDV8901 </td>
<td>Output: EM02004 "The NHI Identifier provided is dormant. This record cannot be updated"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-3 <br /> $add-name </td>
<td>application can display an error when the patient has too many names</td>
<td>Attempt a add a fictitious name to NHI ZDJ6518
<li>Given Names: John Charles</li>
<li> Family Name: Achilles</li></td>
<td>Output: EM02105 "A Patient must not have more than 200 active names"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-4 <br /> $add-name </td>
<td>application can display an error when an attempt to add a name that exists as an active name for that patient</td>
<td>Attempt to add the name below to NHI ZKE9687
<li>Given: RA</li>
<li>Family: Lumbago</li></td>
<td>Output: EM07222 "The Patient name already exists for this Patient"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-5 <br /> $add-name </td>
<td>application can display an error when adding a name that has been deleted from the patient record</td>
<td>Attempt to add the name below to ZAD0152
<li> Given Name: Amy</li>
<li> Family Name: Johnson</li></td>
<td>Output: EM07008 - "The Patient name requested has been removed from the Patient record by NHI administration"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-6 <br /> $add-name </td>
<td>application can display an error when an invalid source is provided</td>
<td>Attempt to add a fictitious name to ZAA1578 with a registered source
 <li>source = BREG (Birth Register)</li></td>
<td>Output: EM07229 - "The patient name can only be set to a registered value by an authorised agency"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-7 <br /> $add-name </td>
<td>application can display an error when a Babyof name is supplied with a use other than 'temp' and a source other than 'NPRF'</td>
<td>Attempt to add a fictitious babyof name to the patient ZDM4902
   <li> Name use = nickname </li>
   <li> source = PPRT </li></td>
<td>Output: EM07225 - "name-use-extra is conditional on source = NPRF and name use = temp"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-8 <br /> $add-name </td>
<td>application can display an error when no given and family name is present</td>
<td>Attempt to add a fictitious name to the patient ZDM4902
   <li>Name use = nickname</li>
   <li>Source = PPRT</li>
   <li>Don't insert a family or given name</li></td>
<td>Output: EM02101 - "A Patient name must contain either a given or family name, a preferred name flag and an information source"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-9 <br /> $add-name </td>
<td>application can display an error when no information source</td>
<td>Attempt to add a fictitious name to the patient ZDM4902
 <li>Name use = nickname</li>
 <li>Don't insert a information-source</li></td>
<td>Output: EM02101 - "A Patient name must contain either a given or family name, a preferred name flag and an information source."</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-10 <br /> $add-name </td>
<td>application can display an error when no preferred-name-flag</td>
<td>Attempt to add a fictitious name to the patient ZDM4902
 <li>Name use = nickname</li>
 <li>source = PPRT</li>
 <li>don't insert a preferred-name flag</li></td>
<td>Output: EM02101 - "A Patient name must contain either a given or family name, a preferred name flag and an information source."</td>
<td>optional</td></tr>

<tr><td>NHI-update-name-error-11 <br /> $add-name </td>
<td>application can display an error when the given or family name contains special characters e.g. # @ % </td>
<td>Attempt to add a fictitious name (with special character) to the patient. ZAZ1913 </td>
<td>Output: "Invalid request body"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-12 <br /> $add-name </td>
<td>application can display an error when a given or family name begins with a number e.g. 1Smith </td>
<td>Attempt to add a fictitious name (with a number as the first character) to the patient ZCV7765 </td>
<td>Output: EM02107 "A Patient’s given and family name must start with a letter of the alphabet or an apostrophe"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-13 <br /> $add-name </td>
<td>application can display an error when a given or family name contains only whitespace/s </td>
<td>Attempt to add a name (containing only whitespace) to the patient ZDC0959</td>
<td>Output: EM02110 "Each populated Patient Name field must contain at least one letter"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-14 <br /> $replace-name</td>
<td>application can display an error when an attempt to replace a verified name with an unverified</td>
<td>Attempt to replace the verified name to the patient ZKE9687, with a fictitious unverified name
 <li> Source = NPRF </li></td>
<td>Output: EM0XXXX - "Cannot update a source to a lower level of proof"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-15 <br /> $inactivate-name</td>
<td>application can display an error when a registered name is modified</td>
<td>Attempt to inactivate the name with source BREG on patient ZKE9393 (Given Name: Jonathan Joseph. Family Name: Savage)</td>
<td>Output: EM0XXXX "Information set to registered cannot be updated contact NHI administration"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-16 <br /> $inactivate-name</td>
<td>application can display an error when attempting to inactivate an 'inactive name'</td>
<td>Attempt to inactivate the name below on the Patient ZKF7027
   <li>Given Name: CJ </li>
   <li>Family Name: Minit</li>
   <li>Set Id: "11" </li>
   <li>Note: inactive names won't appear on the patient record so use set id to attempt to inactivate </li ></td>
<td>Output: EM07223 "The 'Patient Name' is not active and cannot be updated"</td>
<td>optional</td></tr>

<tr><td>NHI-update-name-error-17 <br /> $inactivate-name</td>
<td>application can display an error when an attempt is made to inactivate a preferred name </td>
<td>Attempt to inactivate the preferred name below from Patient ZBJ3544
   <li>Given Name: Rosemary </li>
   <li>Family Name: Alexander</li></td>
<td>Output: EM02104 "An active Patient Preferred Name must not be deleted"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-18 <br /> $inactivate-name</td>
<td>application can display an error when an attempt is made to inactivate a name with a registered source</td>
<td>Attempt to inactivate the name below from Patient ZDW1872
   <li>Given Name: Michaela</li>
   <li>Family Name: Aldom</li></td>
<td>Output: EM07230 "Patient Name has been validated by a public Agency, and cannot be updated"</td>
<td>mandatory</td></tr>
</table>


<h4>NHI Patient Maintain 'Core' tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption> For the NHI Maintain 'core' tests. Please select one of the following NHI numbers and use this for all tests unless stated otherwise <br />
ZAY5549, ZAY5557, ZAY5565, ZAY5573, ZAY5581 </caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>NHI-update-core-1 <br /> $update-identity <br /> Ethnicity</td>
<td>application can correctly update ethnicity values on a patient's record</td>
<td>Update the set of ethnicity information based on the responses to the standard ethnicity collection question for the selected NHI number <br /> 
<img style="width:200px; float:none" src="update-core-1.png"/> </td>
<td>Output:
 <li> The application can update the patients ethnicity information</li>
Patient’s ethnicity after update should be: 
<li> 11111 </li>
<li> 21111 </li>
<li> 31111</li></td>
<td>mandatory</td></tr>

<tr><td>NHI-update-core-2 <br /> $update-identity <br /> Ethnicity</td>
<td>application can correctly update ethnicity values on a patient's record</td>
<td>Update the set of ethnicity information based on the responses to the standard ethnicity collection question for the selected NHI number <br /> 
<img style="width:200px; float:none" src="update-core-2.png"/> </td>
<td>Output:
 <li> The application can update the patients ethnicity information </li>
Patient’s ethnicity after update should be:
<li> 11111 </li>
<li> 34111 </li>
<li> 51120 </li>
<li> 4211 </li></td>
<td>mandatory</td></tr>

<tr><td>NHI-update-core-3 <br /> $update-identity <br /> Ethnicity</td>
<td>application can correctly update an unidentifiable response to the standard ethnicity collection question.</td>
<td>Update the set of ethnicity information based on the responses to the standard ethnicity collection question for the selected NHI number <br />
<img style="width:200px; float:none" src="update-core-3.png"/> </td>
<td>Output:
 <li> The application can update the patients ethnicity information </li>
Patient’s ethnicity after update should be:
   <li> 97777 </li></td>
<td>mandatory</td></tr>

<tr><td>NHI-update-core-4 <br /> $update-identity <br /> Ethnicity</td>
<td>application can correctly update ethnicity values on a patient's record</td>
<td>Update the set of ethnicity information based on the responses to the standard ethnicity collection question for the selected NHI number <br />
<img style="width:200px; float:none" src="update-core-4.png"/> </td>
<td>Output:
 <li> The application can update the patients ethnicity information </li>
Patient’s ethnicity after update should be:
   <li> 12211</li>
   <li> 12920</li> </td>
<td>mandatory</td></tr>

<tr><td>NHI-update-core-5 <br /> $update-identity <br /> Ethnicity</td>
<td>application can correctly update ethnicity values on a patient's record</td>
<td>Update the set of ethnicity information based on the responses to the standard ethnicity collection question for the selected NHI number <br />
<img style="width:200px; float:none" src="update-core-5.png"/> </td>
<td>Output:
 <li> The application can update the patients ethnicity information </li>
Patient’s ethnicity after update should be:
   <li> 61118 </li></td>
<td>mandatory</td></tr>

<tr><td>NHI-update-core-6 <br /> $update-identity-error <br /> Ethnicity</td>
<td>application can display an error when ethnicity information invalid <br /> contains multiple residual codes (9xxxx)</td>
<td>Update the ethnicity information for Patient: ZAA0261 <br />
Ethnicities to use:
   <li> 97777 (response unidentifiable) </li>
   <li> and 99999 (not stated)</li></td>
<td>Output: EM02301 - "A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code" </td>
<td>mandatory</td></tr>

<tr><td>NHI-update-core-7 <br /> $update-identity-error <br /> Ethnicity</td>
<td>application can display an error when ethnicity information invalid <br /> set of supplied ethnicities that includes a duplicate ethnicity</td>
<td>Update the ethnicity information for Patient: ZAA1063 <br />
Ethnicities to use:<br />
<li>32100 (Cook Islands Maori) and,</li>
<li>12948 (South African) and,</li>
<li>32100 (Cook Islands Maori)</li></td>
<td>Output: EM02301 - "A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code" </td>
<td>mandatory</td></tr>

<tr><td>NHI-update-core-8 <br /> $update-identity <br /> Gender</td>
<td>application can correctly update a gender value on a patient's record </td>
<td>Update the gender for Patient: ZAA1063
 <li> Do a Get patient request </li>
 <li> Change gender from current gender to one of the four acceptable gender codes</li></td>
<td>Output: 
 <li> Patients gender coded updated and presented to user </li></td>
<td>mandatory</td></tr>

<tr><td>NHI-update-core-9 <br /> $update-identity <br /> Gender</td>
<td>application can correctly update the gender value and gender-original-text on a patient record</td>
<td>Update the gender for Patient: ZAA1063
 <li>Do a Get patient request </li>
 <li>Change gender from current gender to one of the four acceptable gender codes, include an original text response that a patient might submit </li></td>
<td>Output: 
 <li>Patients gender coded and gender original text updated and presented to user</li></td>
<td>mandatory</td></tr>

<tr><td>NHI-update-core-10 <br /> $update-identity-error <br /> Gender</td>
<td>application can display an error when gender-original-text updated without a gender value</td>
<td>Update the gender-original-text for Patient: ZAA1063</td>
<td>Output: EM07201 - "Is a required field - Patient.gender" </td>
<td>mandatory</td></tr>

<tr><td>NHI-update-core-11 <br /> $update-eligibility</td>
<td>application can correctly update citizenship on a patient's identity record</td>
<td>Update the citizenship for Patient: ZAA1063 from current value to
 <li> Status - unknown or no </li>
 <li> source - NPRF </li></td>
<td>Output:
 <li>Citizenship is updated on the patient record </li>
 <li>The patient record clearly shows citizenship status and source </li></td>
<td>mandatory</td></tr>

<tr><td>NHI-update-core-12 <br /> $update-eligibility</td>
<td>application can correctly update citizenship on a patient's identity record</td>
<td>Update the citizenship for Patient: ZKF6683 
 <li> Citizenship = yes </li>
 <li> Source = change to another verified source</li></td>
<td>Output:
 <li> Citizenship is updated on the patient record </li>
 <li>The patient record clearly shows citizenship status and source </li></td>
<td>mandatory</td></tr>

<tr><td>NHI-update-eligibility-error-1</td>
<td>application can display an error when attempting to add a registered source for citizenship </td>
<td>Attempt replace citizenship for Patient: ZKF6683
 <li> Citizenship = yes </li>
 <li> Attempt to add source = DIA </li></td>
   <td>Output: EM07229 - The citizenship information source can only be set to a registered value by an authorised agency"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-eligibility-error-2</td>
<td>application can display an error when an attempt to replace a verified to unverified source for citizenship</td>
<td>Attempt replace citizenship for Patient: ZKF6683
 <li> Citizenship = yes </li>
 <li> Attempt to add source = NPRF </li></td>
<td>Output: EM0XXXX - "Cannot update a source to a lower level of proof"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-eligibility-error-3</td>
<td>application can display an error when an attempt to replace a citizenship that has a registered source</td>
<td>Attempt to replace citizenship on NHI ZKF6691
 <li> Citizenship = yes </li>
 <li> Attempt to add a verified or non-verified source </li></td>
<td>Output: "EM07230 - The patient's citizenship has been validated by a public Agency, and cannot be updated"</td>
<td>mandatory</td></tr>
</table>
