<h4>NHI Patient Consumer GET tests</h4>
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
<td>NHI-Consumer-GET-1</td>
<td>application can clearly display that the information has come from the NHI rather than another source</td>
<td>XXXXXXX</td>
<td>Output: The application alerts the user that the information they are viewing has been returned from the NHI</td>
<td>Mandatory</td>
</tr>

<tr>
<td>NHI-Consumer-GET-2</td>
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
      <li>Gender-original-text is present</li>
    </ul>
  </li>
  <li>Date of Birth</li>
  <li>Place of Birth</li>
  <li>Ethnicities
    <ul>
      <li>All - up to six</li>
    </ul>
  </li>
  <li>NZ Citizenship status</li>
  <li>DHB - optional</li>
</ul>
</td>
<td>XXXXXXX</td>
<td>Output: Person's information clearly displayed</td>
<td>Mandatory</td>
</tr>

<tr>
<td>NHI-Consumer-GET-3</td>
<td>application can display error message if a patient record has a Date of Death</td>
<td>XXXXXXX</td>
<td>Output: The application alerts the user of an error an a business process to sort out the reason that a patient record has a death date</td>
<td>Mandatory</td>
</tr>

<tr><td>NHI-Consumer-GET-4</td>
<td>application can display all other identity data returned by the NHI in a GET response including:
<li>A non validated residential (physical) and mailing (postal) address</li>
<li>A year of birth</li>
<li>Unknown citizenship</li></td>
<td>XXXXXXX</td>
<td>Output: All identity information is displayed for the patient. This is for a patient record that has partial information in some fields. The patient has:
  <ul>
    <li>A not validated physical address</li>
    <li>A not validated postal address</li>  
    <li>Partial date of birth</li>
  </ul>
</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Consumer-GET-5</td>
<td>application alerts the user that a requested NHI is dormant, and that the live NHI has been returned.</td>
<td>XXXXXXX</td>
<td>
  <ul>
    <li>Outout: Notification to the user that the requested NHI was dormant and the live NHI has been returned </li>
    <li> Output: Patient Live NHI returned should be XXXXXXX </li>
  </ul>
</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Consumer-GET-6</td>
<td>application can receive and display NHI responses that have fields populated with the maximum allowable sizes (e.g. A given name of 50 characters, Other given name(s) of 100 characters, Family Name of 100 characters).</td>
<td>XXXXXXX</td>
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

<tr><td>NHI-Consumer-GET-7</td>
<td>application behaves appropriately when a new format NHI number is returned</td>
<td>
   <ul>
      <li>XXXXXXX</li>
      <li>XXXXXXX</li>
   </ul>
</td>
<td>Output: Application does not error </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Consumer-GET-8</td>
<td>application can synchronize with local system in response to the NHI version changing</td>
<td>ZCX7065</td>
<td><li>Do a GET</li>
<li>Update the patient details (to simulate a 3rd party updating the NHI info)</li>
<li>Do another GET</li>
<li>Demonstrate how end user can view the difference then synchronize</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Consumer-GET-9</td>
<td>application can handle a response when a patient has
  <ul>
    <li>only a family name</li>
    <li>only a given name</li>
    <li>multiple names</li>
  </ul>
<td>
  <li><b>Do all</b>
  <ul>
    <li>ZAU8023</li>
    <li>ZAV8657</li>
    <li>ZHS7524</li>
  </ul>
  </li>
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

<h4>NHI Consumer Set-address tests</h4>
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

<tr><td>NHI-Consumer-Set-Address-1</td>
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

<tr><td>NHI-Consumer-Set-Address-2</td>
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

<tr><td>NHI-Consumer-Set-Address-3</td>
<td>application can remove the <b>postal address</b> on a patient record</td>
<td>
    <li> Remove the <b>postal address</b> from the patient record using the $remove-postal-address operation</li>
</td>
<td>
  <li>Output: The patient record has Postal address removed</li>
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Consumer-Set-Address-4</td>
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

<tr><td>NHI-Consumer-Set-Address-5</td>
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

<tr><td>NHI-Consumer-Set-Address-6</td>
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


<h4>NHI Consumer Set-Preferred-Name</h4>
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

<h4>NHI Consumer Update Identity tests</h4>
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

<tr><td>NHI-Consumer-Update-Identity-1 <br /> Ethnicity</td>
<td>application can correctly update ethnicity values on a patient's record</td>
<td>Ethnicity question presented correctly</td>
<td>
  <li>Output:
    <ul>
      <li> Person able to select their ethnicities The application can update the patients ethnicity information</li>
Patient’s ethnicity after update should be: 
<li> 11111 </li>
<li> 21111 </li>
<li> 31111</li></td>
<td>mandatory</td></tr>
