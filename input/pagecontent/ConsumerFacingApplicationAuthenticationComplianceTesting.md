

<h4>NHI Consumer Get tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr>
<td>NHI-Consumer-Get-1</td>
<td>application can clearly display that the information has come from the NHI rather than another source</td>
<td>Di.mha.test+INT-ZKV6957@gmail.com</td>
<td>Output: The application alerts the user that the information they are viewing has been returned from the NHI</td>
<td>Mandatory</td>
</tr>

<tr>
<td>NHI-Consumer-Get-2</td>
<td>application can display all relevant patient information <br />
<ul>
  <li>NHI numbers
    <ul>
      <li> All NHI numbers clearly labelled (live and dormant)</li>
    </ul>
  </li>
  <li>Names
    <ul>
      <li> All names clearly labelled, exclude any 'BabyOf' Names</li>
      <li> Name details as appropriate</li>
    </ul>
  </li>
  <li>Address
    <ul>
      <li>Residential address </li>
      <li>Postal address if present</li>
    </ul>
  </li>
  <li> Gender 
    <ul>
      <li>Gender code</li>
      <li>Gender-original-text if present</li>
    </ul>
  </li>
  <li>Date of Birth</li>
  <li>Place of Birth</li>
  <li>Ethnicities
    <ul>
      <li>All (up to six)</li>
    </ul>
  </li>
  <li>NZ Citizenship status</li>
  <li>DHB - optional</li>
</ul>
</td>
<td>Di.mha.test+INT-ZKV6957@gmail.com</td>
<td>Output: Person's information clearly displayed</td>
<td>Mandatory <br /> (for data items being handled)</td>
</tr>

<tr>
<td>NHI-Consumer-Get-3</td>
<td>application has an appropriate exception flow if a patient record has a Date of Death</td>
<td>Di.mha.test+INT-ZKV7015@gmail.com</td>
<td>Output: The application alerts the user of the exception flow and an appropriate business process to reslove data quality errors</td>
<td>Mandatory</td>
</tr>

<tr>
<td>NHI-Consumer-Get-4</td>
<td>application can display all other identity data returned by the NHI in a Get response including: <br />
<ul>
  <li>A non validated residential (physical) and mailing (postal) address</li>
  <li>A year of birth</li>
  <li>Unknown citizenship</li>
</ul>
</td>
<td>Di.mha.test+INT-ZKV7520@gmail.com</td>
<td>Output: All identity information is displayed for the patient. This is for a patient record that has partial information in some fields. The patient has:
  <ul>
    <li>A not validated physical address</li>
    <li>A not validated postal address</li>  
    <li>Partial date of birth</li>
  </ul>
</td>
<td>Mandatory <br /> (for data items being handled)</td>
</tr>

<tr><td>NHI-Consumer-Get-5 <br /> <b>TBD-MHA</b></td>
<td> Describe the excpetion flow if the requested NHI is dormant, and that the live NHI has been returned.</td>
<td>Di.mha.test+INT-ZKV7457@gmail.com</td>
<td>
  <ul>
    <li>Outout: Notification to the user that the requested NHI was dormant and the live NHI has been returned </li>
    <li>Output: Patient Live NHI returned should be XXXXXXX </li>
  </ul>
</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Consumer-Get-6</td>
<td>application can receive and display NHI responses that have fields populated with the maximum allowable sizes (e.g. A given name of 50 characters, Other given name(s) of 100 characters, Family Name of 100 characters)</td>
<td>Di.mha.test+INT-ZBE4905@gmail.com</td>
<td>
  <ul>
    <li>Output: Patient information supplied is displayed without loss of data</li>
    <li>This is for a patient record that has attribute values which are the maximum allowed field length in some fields</li>
    <li>The patient has the following fields fully populated in the test record (field lengths in parentheses):</li>
     <ul>
       <li>Given name (50)</li>
       <li>Other Given Name(s) (100)</li>
       <li>Family Name (100)</li>
       <li>Address line 1 (100)</li>
       <li>Address lines 2-5 (50)</li>
       <li>Building name/additional details (255)</li>
     </ul>
  </ul>
</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Consumer-Get-7</td>
<td>application behaves appropriately when a new format NHI number is returned</td>
<td>
   <ul>
      <li>Di.mha.test+INT-ZUG37LU@gmail.com</li>
   </ul>
</td>
<td>Output: Application does not error </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Consumer-Get-8 <br /> <b>TBD-MHA</b></td>
<td>??????????????????? SYNC?????? NHI info varies to consumer can see on APP - application can synchronize with local system in response to the NHI version changing</td>
<td>Di.mha.test+INT-ZCX7065@gmail.com</td>
<td>
  <ul>
    <li>Do a Get</li>
    <li>Update the patient details (to simulate a 3rd party updating the NHI info)</li>
    <li>Do another Get</li>
    <li>Demonstrate how end user can view the difference then synchronize</li>
  </ul>
</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Consumer-Get-9</td>
<td>application can handle a response when a patient has
  <ul>
    <li>only a family name</li>
    <li>only a given name</li>
  </ul>
</td>
<td> <b>Do all</b> <br />
  <ul>
    <li>Di.mha.test+INT-ZKV8747@gmail.com</li>
    <li>Di.mha.test+INT-ZAV8657@gmail.com</li>
    <li>ZHS7524</li>
  </ul>
</td>
<td><li>Output:
  <ul>
    <li>application does not error</li> 
    <li>application returns all name parts when present</li> 
    <li>order of name parts is clear to the user</li>
  </ul>
</li>
</td>
<td>mandatory</td></tr>
</table>

<h4>NHI Consumer set-address tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption>Use Di.mha.test+INT-ZUG37LU@gmail.com for all updates</caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>NHI-Consumer-set-address-1</td>
<td>application can replace the <b> primary residential address </b> on a patient record with a validated address </td>
<td>
  <ul>
    <li>Locate a validated address to use (this can be done using https://www.nzpost.co.nz/tools/address-postcode-finder) or use Health_UI </li>
    <li>Add a new <b> primary residential address </b> to the patient record using the set-addresss operation</li>
  </ul>
</td>
<td>
  <ul>
    <li>Input: Application can validate an address via e-SAM (using suggest or search)</li>
    <li>Input: An address request can be populated with appropriate information</li>
    <li>Output: The address that is displayed to the end user is the address that is returned in the update response</li>
  </ul>
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Consumer-set-address-2</td>
<td>application can add (or replace) the <b> postal address </b> on a patient record with a validated address</td>
<td>
  <ul>
    <li>Locate a validated address to use (this can be done using https://www.nzpost.co.nz/tools/address-postcode-finder) or use Health_UI </li>
    <li>Add a new <b> postal address </b> to the patient record using the set-addresss operation</li>
  </ul>
</td>
<td>
  <ul>
    <li>Input: Application can validate an address via e-SAM (using suggest or search)</li>
    <li>Input: An address request can be populated with appropriate information</li>
    <li>Output: The address that is displayed to the end user is the address that is returned in the update response</li>
  </ul>
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Consumer-set-address-3</td>
<td>application can remove the <b>postal address</b> on a patient record</td>
<td>
    <li> Remove the <b>postal address</b> from the patient record using the $remove-postal-address operation</li>
</td>
<td>
  <li>Output: The patient record has Postal address removed</li>
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Consumer-set-address-4</td>
<td><b>Not currently implemented</b> <br />
Application will show the correct error when attempting to add the supplied address that has been previously removed from the patient record by NHI administration</td>
<td>
 <ul>
  <li> address-line: 24 Anglesea Avenue </li>
  <li> nz-address-id: 967406 </li>
  <li> address-type: physical</li>
 </ul>
</td>
<td>Error: EM02004 - The Patient Address requested has been removed from the Patient record by Te Whatu Ora </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Consumer-set-address-5</td>
<td>Application will show the correct error when attempting to add the following postal address for an undeliverable address</td>
<td>
 <ul>
  <li> address-line: 748E Whitemans Valley Road </li>
  <li> nz-address-id: 3193368 </li>
  <li> address-type: postal</li>
 </ul>
</td>
<td>Error: EM02209 - A validated mailing address must be an address at which mail can be delivered </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Consumer-set-address-6</td>
<td>Application will show the correct error when attempting to add an address where the nz address id does not match the first line of the validated address</td>
<td>
 <ul>
  <li> address-line: 24 Ranglesey Place </li>
  <li> nz-address-id: 1199146 </li>
  <li> address-type: physical</li>
 </ul>
</td>
<td> Error: "address-line must match the espatial value: ..."  </td>
<td>Mandatory</td></tr>
</table>


<h4>NHI Consumer set-preferred-name tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>NHI-Conumer-set-preferred-name-1</td>
<td>application can set the patients preferred name</td>
<td>
  <ul>
    <li>Do a Get Patient request to see active patient names</li>
    <li>Change the preferred name from the current name to another active name for the patient</li>
  </ul>
</td>
<td>
  <ul>
    <li> Input:
      <ul>
        <li> An application can select a Patients preferred name from the active names list </li>
      </ul>
    </li>
    <li> Output:
      <ul>
        <li> The preferred name that is displayed to the end user is the name that was selected in the operation</li>
        <li> The name is presented to the user with all name parts</li>
      </ul>
    </li>
  </ul>
</td>
<td>mandatory</td></tr>
</table>

<h4>NHI Consumer Update-identity tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>NHI-Consumer-update-identity-1 <br /> Ethnicity</td>
<td>application can correctly re-collect ethnicity information from a person</td>
<td>Ethnicity question presented correctly <br />
Update the set of ethnicity information based on the responses to the standard ethnicity collection question for the selected NHI number <br /> 
<img style="width:200px; float:none" src="update-core-1.png"/> </td>
<td>
  <li>Output:
    <ul>
      <li> Person able to select their ethnicities </li>
      <li>The application can update the patients ethnicity information</li>
      <li> Patient’s ethnicity after update should be: 
      <ul>
        <li> 11111 </li>
        <li> 21111 </li>
        <li> 31111</li>
      </ul>
      </li>
    </ul>
  </li>
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Consumer-update-identity-2 <br /> Ethnicity</td>
<td>application can correctly re-collect ethnicity information from a person</td>
<td>Ethnicity question presented correctly <br />
Update the set of ethnicity information based on the responses to the standard ethnicity collection question for the selected NHI number <br /> 
<img style="width:200px; float:none" src="update-core-2.png"/> </td>
<td>
  <li>Output:
    <ul>
      <li> Person able to select their ethnicities </li>
      <li>The application can update the patients ethnicity information</li>
      <li> Patient’s ethnicity after update should be: 
      <ul>
        <li> 11111 </li>
        <li> 34111 </li>
        <li> 51120 </li>
        <li> 4211 </li>
      </ul>
      </li>
    </ul>
  </li>
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Consumer-update-identity-3 <br /> Ethnicity-error</td>
<td>application can display an error when ethnicity information invalid <br /> set of supplied ethnicities that includes a duplicate ethnicity</td>
<td>Update the ethnicity information for Patient: ZAA1063 <br />
Ethnicities to use:<br />
<li>32100 (Cook Islands Maori) and,</li>
<li>12948 (South African) and,</li>
<li>32100 (Cook Islands Maori)</li></td>
<td>Output: EM02301 - "A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code" </td>
<td>mandatory</td></tr>

<tr><td>NHI-Consumer-update-identity-4 <br /> Gender</td>
<td>application can correctly update a gender value on a patient's record </td>
<td> Change the gender from current gender to one of the three acceptable gender codes <br />
<b> Do all </b>
  <ul>
    <li> Male</li>
    <li>Female</li>
    <li>Another gender</li>
  </ul>
</td>
<td>Output: 
 <li> Patients gender coded updated corrctly</li></td>
<td>mandatory</td></tr>

<tr><td>NHI-Consumer-update-identity-5 <br /> Gender</td>
<td>application can correctly update the gender value and gender-original-text on a patient record</td>
<td>
  <ul>
    <li> Change the gender code from current gender to 'Another gender' </li>
    <li> include an original text response that a patient might submit </li>
  </ul>
</td>
<td>Output: 
 <li> Patients gender coded updated corrctly</li></td>
<td>Mandatory if allowing a gendeer text update</td></tr>

<tr><td>NHI-Consumer-update-identity-6 <br /> Gender-error</td>
<td>application can display an error when gender-original-text updated without a gender value</td>
<td>Update the gender-original-text for Patient</td>
<td>Output: EM07201 - "Is a required field - Patient.gender" </td>
<td>Mandatory if allowing a gendeer text update</td></tr>
</table>
