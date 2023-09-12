



<h4>NHI Patient GET tests</h4>
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
<td>NHI-GET-1</td>
<td>application displays the minimum patient information required to confirm identity:
<li>Preferred name including Given Name(s), Family Name</li>
<li>Date of Birth</li>
<li>Gender</li>
<li>Primary Address</li>
</td>
<td>ZJS7596</td>
<td>Output: Minimum identity information is displayed for the patient</td>
<td>Mandatory</td>
</tr>

<tr>
<td>NHI-GET-2</td>
<td>application can display the Date of Death</td>
<td>ZAT2348</td>
<td>Output: The application alerts the user that the patient is deceased and provides the date of death</td>
<td>Mandatory</td>
</tr>

<tr><td>NHI-GET-3</td>
<td>application can display all other identity data returned by the NHI in a GET response including:
<li>All patient names with all name parts</li>
<li>Name Information Source</li>
<li>Date of Birth Information Source</li>
<li>Ethnicity information</li>
<li>All patient addresses and address parts</li>
<li>NZ Citizenship status</li>
<li>Country of Birth</li>
<li>Country of Birth source</li>
<li>Place of Birth</li></td>
<td>ZAT2364</td>
<td>Output: All identity information is displayed for the patient. The patient:
<li>Is alive</li>
<li>Has 4 names - no name use + preferred = true, no name use + preferred = false, one ‘baby of’, one maiden</li>
<li>The preferred name should have all name parts populated</li>
<li>Has two addresses, the primary resedential (physical) address is overseas and the mailing (postal) address is in NZ</li>
<li>Has three ethnicities</li>
<li>Is a NZ citizen</li></td>
<td>*Mandatory if the application is using the data</td></tr>

<tr><td>NHI-GET-4</td>
<td>application can display all other identity data returned by the NHI in a GET response including:
<li>A non validated primary address</li>
<li>A year of birth and a year and month of death (partial dates)</li>
<li>Unknown citizenship</li></td>
<td>ZAT2496</td>
<td>Output: All identity information is displayed for the patient. This is for a patient record that has partial information in some fields. The patient has:
<li>A not validated physical address</li>
<li>Partial date of death</li>
<li>Partial date of birth</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-GET-5</td>
<td>application alerts the user that a requested NHI is dormant, and that the live NHI has been returned.</td>
<td>ZAT2518</td>
<td>Outout: Notification to the user that the requested NHI was dormant and the live NHI has been returned <br />
Output: Patient Live NHI returned should be ZAT2496 <br />
Output: Minimum identity information for the live NHI is displayed for the patient</td>
<td>Mandatory</td></tr>

<tr><td>NHI-GET-6</td>
<td>application can receive and display NHI responses that have fields populated with the maximum allowable sizes (e.g. A given name of 50 characters, Other given name(s) of 100 characters, Family Name of 100 characters).</td>
<td>ZBE4905</td>
<td>Output: Patient information supplied is displayed without loss of data <br />
This is for a patient record that has attribute values which are the maximum allowed field length in some fields <br />
The patient has the following fields fully populated in the test record (field lengths in parentheses):
<li>Given name (50)</li>
<li>Other Given Name(s) (100)</li>
<li>Family Name (100)</li>
<li>Address line 1 (100)</li>
<li>Address lines 2-5 (50)</li>
<li>Building name/additional details (255)</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-GET-7</td>
<td>application behaves appropriately when a new format NHI number is produced</td>
<td>
   <ul>
      <li>ZXE24NV</li>
      <li>ZUA48EH</li>
   </ul>
</td>
<td>Output: Application does not error </td>
<td>Mandatory</td></tr>

<tr><td>NHI-GET-8</td>
<td>application can synchronize with local system in response to the NHI version changing</td>
<td>ZCX7065</td>
<td><li>Do a GET</li>
<li>Update the patient details (to simulate a 3rd party updating the NHI info)</li>
<li>Do another GET</li>
<li>Demonstrate how end user can view the difference then synchronize</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-GET-9</td>
<td>application presents the address parts appropriately, including multiple addresses.</td>
<td>ZJM9567</td>
<td>Output: All address formats are displayed appropriately</td>
<td>Mandatory</td></tr>

<tr><td>NHI-GET-10</td>
<td>application can handle a response when a patient has <br /> only a family name; <br /> only a given name; <br /> multiple names</td>
<td> <b>Do all</b> <br /> ZAU8023 <br /> ZAV8657 <br /> ZHS7524 </td>
<td>Output:
<li>application does not error</li> 
<li>application returns all name parts when present</li> 
<li>order of name parts is clear to the user</li></td>
<td>mandatory</td></tr>
</table>

<h4>NHI Patient GET tests (enrolled GP and contact details only)</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption> <b>Only complete these if you have either permission to vew a patient's enrolled GP or contact details</b> </caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>NHI-GET-11</td>
<td>
application can display the patients's enrolled General Practice details returned by the NHI in a GET response including: <br />
<ul>
   <li>The NES enrolment id</li>
   <li>enrolment.startDate</li>
   <li>enrolment.expiryDate</li>
   <li>Practitioner identifier (CPN) and name</li>
   <li>enrolling organisation ID and name</li>
   <li>Facility ID and name</li>
</ul>
</td>
<td>
   <ol>
      <li> ZKC4641
        <ul>
          <li>Practitioner</li>
          <li>Organisation</li>
          <li>Facility</li>
        </ul>
      </li>
      <li>ZKC4633
        <ul>
          <li>Practitioner</li>
          <li>Organisation</li>
          <li>Facility</li>
        </ul>
      </li>
      <li>ZAN5358
        <ul>
          <li>Organisation</li>
          <li>Facility</li>
        </ul>
      </li>
   </ol>
</td>
<td>Output:
   <ul>
      <li>application does not error</li> 
      <li>application returns all General Practice details when present</li>
   </ul>
</td>
<td>Mandatory</td></tr>

<tr><td>NHI-GET-12</td>
<td>application can display the patients's contact details returned by the NHI in a GET response including: <br />
<ul>
   <li>Home phone</li>
   <li>Mobile phone</li>
   <li>Email address</li>
</ul>
</td>
<td>
   <ol>
      <li>ZKC4650
        <ul>
           <li>Home phone</li>
           <li>Mobile phone</li>
           <li>Email address</li>
        </ul>
      </li>
      <li>ZKC4633
        <ul>
           <li>Home phone</li>
           <li>Mobile phone</li>
           <li>Email address</li>
        </ul>
      </li>
   </ol>
</td>
<td>
   <li>Output:
      <ul>
         <li>application does not error</li> 
         <li>application returns all Contact details when present</li>
      </ul>
   </li> 
</td>
<td>Mandatory</td></tr>
</table>

<h4>NHI Patient Match tests</h4>
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

<tr><td>NHI-Match-1</td>
<td>application allows the user to search using the following attributes:
<ul>
   <li>Name
      <ul>
         <li> First name (Given Name) </li>
         <li> Middle name (Other given name) </li>
         <li> Last name (Family Name)</li>
      </ul></li>
   <li>Date of birth (Full or partial)</li>
</ul> <br />
And to show that the application can present the minimum details to allow for adequate confirmation of identity. <br />
<ul>
   <li>Name
      <ul>
         <li> First name (Given Name) </li>
         <li> Middle name (Other given name) </li>
         <li> Last name (Family Name)</li>
      </ul>
   </li>
   <li>Date of birth (Full or partial)</li>
   <li>Gender</li>
   <li>Primary Address</li>
   <li>Date of Death</li>
   <li>NHI Identifier</li>
   <li>Match Score</li>
   <li>Display a flag/indicate when a patient in the search result has multiple names</li>
</ul> <br />
Note:
<ul>
   <li>The application must display multiple results if they are returned.</li>
   <li>Results must be presented in descending order of the match score.</li>
</ul></td>
<td>
   <ul>
      <li> Name
        <ul>
           <li>Given Name: Noah</li>
           <li>Middle Name: James</li>
           <li>Family Name: Owen</li>
        </ul>
      </li>
      <li>Gender: M</li>
      <li>DOB: 1949-10-30 (30th October 1949)</li>
   </ul></td>
<td>
   <ul>
     <li> Input: Minimum search criteria can be entered</li>
     <li> Output:
       <ul>
         <li>The top result returned in the search should be NHI ZAT4626</li>
         <li>Minimum search result identity attributes are all present in result list</li>
        </ul>
      </li>
   </ul>
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Match-2 (if applicable)</td>
<td>application allows the user to search with additional match criteria <br />
If the application is populating any of these other parameters in your Match request then do this one too <br />
The additional criteria includes:
<ul>
   <li>Address</li>
   <li>Date of Death</li>
   <li>Place of Birth</li>
   <li>Country of Birth</li>
   <li>Building name</li>
</ul></td>
<td>
<ul>
   <li>Name</li>
     <ul>
        <li>Given Name: Summer</li>
        <li>Middle Name: Barbara</li>
        <li>Family Name: MacKenzie</li>
     </ul>
   <li>Gender: F</li>
   <li>Date of Birth: 28-09-1954</li>
   <li>Street: 167 Springfield Road</li>
   <li>Suburb: St Albans</li>
   <li>townOrCity: Christchurch</li>
   <li>dateOfDeath:  1975-05</li>
   <li>Place of Birth: Wellington</li>
   <li>Country of Birth: India (Code ‘IN’)</li>
   <li>Building name: Buildingnametest</li>
</ul></td>
<td>
   <ul>
      <li>Input: Additional Search Criteria can be populated</li>
      <li>Output:First result returned in the search result list should be NHI ZAT4642</li>
   </ul>
</td>
<td>mandatory (if applicable) </td></tr>

<tr><td>NHI-Match-3</td>
<td> application can manage many NHI resources in the response bundle and that results are presented in descending order of the match score </td>
<td> 
   <ul>
      <li>Name</li>
        <ul>
          <li>Given Name: Test</li>
          <li> Middle Name:</li>
          <li> Family Name: Test</li>
        </ul>
      <li> Gender: M </li>
      <li> DOB: 31-12-1999 </li>
   </ul></td>
<td>
   <ul>
      <li> Input: Above criteria can be entered </li>
      <li> Output
      <ul>
         <li> 10 results are returned</li> 
         <li>The top result returned is NHI: ZAX6965 Score: 99</li>
      </ul>
      </li>
   </ul>
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Match-Error-1</td>
<td> application can return the appropriate error message to the user </td>
<td> Use a Match request to try and retrieve a record with Given Name: Rhetoric </td>
<td> Output: Expected error message: Date of Birth is a required </td>
<td>mandatory</td></tr>

<tr><td>NHI-Match-Error-2</td>
<td> application can return the appropriate error message to the user </td>
<td> Use a Match request to try and retrieve a record with Date of Birth: 28-09-1954 </td>
<td> Output: Expected error message: Name is required </td>
<td>mandatory</td></tr>
</table>

<h4>NHI Patient Match tests (Minimum data requirements)</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption> Only complete these if you are implementing <b>Patient $Match</b> prior to <b>Get Patient</b> and therefore need to prove minimum data requirements are met. Please discuss this with the integration team prior to submitting your compliance tests to make sure the use case is valid </caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>NHI-Match-4 (NHI-Get-1)</td>
<td> the application displays the minimum patient information required to confirm identity:
<li>Preferred name including Given Name(s), Family Name</li>
<li>Date of Birth</li>
<li>Gender</li>
<li>Primary Address</li></td>
<td>Use a Match request to retrieve ZJS7596 and demonstrate how you display the NHI details <br />
Family Name: Maraka <br />
Given Names: Jamie, Susan <br />
Date of birth:25-08-1977 <br />
Gender: Female <br />
Address: 2 Tennyson Street, Napier South, Napier, 4110 <br />
Use - Home <br />
Type - Physical </td>
<td>Input: Above criteria can be entered <br />
Output: The top result returned is NHI: ZJS7596 <br />
Output: Minimum identity information is displayed for the patient</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Match-5 (NHI-Get-2)</td>
<td> application can display the Date of Death </td>
<td>Use a Match request to retrieve ZAT2348 and demonstrate how you display the NHI details <br />
Family Name: Smith-Martin <br />
Given Names: Laura, Rose <br />
Date of birth:14-07-1970 <br />
Gender: Female <br />
Address: <br />
Not validated-address-reason - No Fixed Abode, <br />
Domicile code - D091, <br />
Use - Home, <br />
Type - Physical </td>
<td>Input: Above criteria can be entered <br />
Output: The top result returned is NHI: ZAT2348 <br />
Output: The application alerts the user that the patient is deceased and provides the date of death</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Match-6 (NHI-Get-3)</td>
<td>application can display all other identity data returned by the NHI in a GET response including: <br />
   <ul>
      <li>All patient names with all name parts</li>
      <li>Name Information Source</li>
      <li>Date of Birth Information Source</li>
      <li>Ethnicity information</li>
      <li>All patient addresses and address parts</li>
      <li>NZ Citizenship status</li>
      <li>Country of Birth</li>
      <li>Country of Birth source</li>
      <li>Place of Birth</li>
   </ul>
</td>
<td>Use a Match request to retrieve ZAT2364 and demonstrate how you display the NHI details <br />
Family Name: John <br />
Given Names: Levi, Sands <br />
Date of birth:26-02-1995 <br />
Gender: Male </td>
<td>Input: Above criteria can be entered <br />
Output: All identity information is displayed for the patient. <br />
The patient: <br />
<li>Is alive</li>
<li>Has 4 names - no name use + preferred = true, no name use + preferred = false, one ‘baby of’, one maiden</li>
<li>The preferred name should have all name parts populated</li>
<li>Has two addresses, the primary resedential (physical) address is overseas and the mailing (postal) address is in NZ</li>
<li>Has three ethnicities</li>
<li>Is a NZ citizen</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Match-7 (NHI-Get-4)</td>
<td>application can display all other identity data returned by the NHI in a GET response including:
<li>A non validated primary address</li>
<li>A year of birth and a year and month of death (partial dates)</li>
<li>Unknown citizenship</li></td>
<td>Use a Match request to retrieve ZAT2496 and demonstrate how you display the NHI details <br />
Family Name: Yossarian <br />
Given Names: John, Test <br />
Date of birth:01-01-1914 <br />
Gender: Male </td>
<td>Input: Above criteria can be entered <br />
Output: All identity information is displayed for the patient. This is for a patient record that has partial information in some fields. The patient has: <br />
<li>A not validated physical address</li>
<li>Partial date of death</li>
<li>Partial date of birth</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Match-8 (NHI-Get-6)</td>
<td>application can receive and display NHI responses that have fields populated with the maximum allowable sizes (e.g. A given name of 50 characters, Other given name(s) of 100 characters, Surname of 100 characters)</td>
<td>Use a Match request to retrieve ZBE4905 and demonstrate how you display the NHI details <br />
Family Name: SurnameVeryLongLongLongnamewithtoomanycharactersVeryVeryVeryLongLongLongnamewithtoomanycharacters <br />
Given Names: GivenVeryVeryLongLongLongnamewithtoomanycharacters, MiddleVeryLongLongLongnamewithtoomanycharactersVeryVeryVeryLongLongLongnamewithtoomanycharacters <br />
Date of birth:01-01-1974 <br />
Gender: Female </td>
<td>Input: Above criteria can be entered <br />
Output: The application can manage a patient record that has attribute values which are the maximum allowed field length in some fields <br />
The patient has the following fields fully populated in the test record (field lengths in parentheses): <br />
<li>Given name (50)</li>
<li>Other Given Name(s) (100)</li>
<li>Surname (100)</li>
<li>Address line 1 (100)</li>
<li>Address lines 2-5 (50)</li>
<li>Building name/additional details (255)</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Match-9 (NHI-Get-7)</td>
<td>application behaves appropriately when a new format NHI number is produced</td>
<td>Use a Match request to retrieve either ZZZ00AX or ZGT56KB and demonstrate how you display the NHI details <br />
1. <b>ZZZ00AX</b> <br />
Family Name: Newnhi <br />
Given Name: Format <br />
Date of birth:28-08-2020 <br />
Gender: Female <br />
2. <b>ZGT56KB</b> <br />
Family Name: Kucharski <br />
Given Names: Markus, Christoff <br />
Date of birth:06-09-2013 <br />
Gender: Male </td>
<td>Input: Above criteria can be entered <br />
Output: Application does not error</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Match-10 (NHI-Get-8)</td>
<td>application can synchronize with local system in response to the NHI version changing</td>
<td>Use a Match request to retrieve ZCX7065, using details: <br />
Family Name: ALLEN <br />
Given Name: JOSEPH <br />
Date of birth:01-04-1950 <br />
Gender: Female </td>
<td><li>Do a Match</li>
<li>Update the patient details (to simulate a 3rd party updating the NHI info)</li>
<li>Do another Match</li>
<li>Demonstrate how end user can view the difference then synchronize</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Match-11 (NHI-Get-9)</td>
<td>application presents the address parts appropriately, including multiple addresses</td>
<td>Use a Match request to retrieve ZJM9567 and demonstrate how you display the NHI details <br />
Family Name: MultipleAddress <br />
Given Name: Francis <br />
Date of birth:12-12-1982 <br />
Gender: Male </td>
<td>Input: Above criteria can be entered <br />
Output: All address formats are displayed appropriately</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Match-12 (NHI-Get-10)</td>
<td>application can handle a response when a patient has <br />
only a surname; <br />
only a given name; <br />
multiple names</td>
<td> Use a Match request to retrieve <b> all of the following </b> and demonstrate how you display the NHI details <br />
<b> 1. ZAU8023 </b> <br />
Family Name: Magi <br />
Date of birth:01-01-2012 <br />
Gender: Unknown <br />
<b> 2. ZAV8657 </b> <br />
Given Name: Cambridge <br />
Date of birth:12-04-1960 <br />
Gender: Male <br />
<b> 3. ZHS7524 </b> <br />
Family Name: WILLIS <br />
Given Names: ELIZABETH, MARGARET <br />
Date of birth:15-06-2002 <br />
Gender: Female </td>
<td>Input: Above criteria can be entered for the 3 Match scenarios <br />
<b> 1. Output: The top result returned is NHI: ZAU8023 </b> <br />
<b> 2. Output: The top result returned is NHI: ZAV8657 </b> <br />
<b> 3. Output: The top result returned is NHI: ZHS7524 </b> <br />
Output: Application does not error <br />
Output: Application returns all name parts when present <br />
Output: Order of name parts is clear to the user </td>
<td>Mandatory</td></tr>
</table>


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
<td>application can display an error when an attempt is made to inactivate a name with a verified source</td>
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
<td>application can display an error when an attempt to add a registered source for citizenship </td>
<td>Attempt replace citizenship for Patient: ZKF6683
 <li> Citizenship = yes </li>
 <li> Attempt to add source = DIA </li></td>
   <td>Output: EM0XXXX "Patient NZ Citizenship has been validated by a public Agency, and cannot be updated"</td>
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
<td>Output: EM0XXXX "Information set to registered cannot be updated contact NHI administration"</td>
<td>mandatory</td></tr>
</table>


<h4>NHI Create Patient tests</h4>
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
<td>NHI-Create-Patient-1</td>
<td>Application can create a new patient with the minimum set of patient information </td>
<td>Create a patient with a fictitious identity (this can be done using http://www.fakenamegenerator.com/)
<ul>
 <li> Name
  <ul>
   <li> Given only </li>
   <li> Source - PPRT</li>
  </ul>
 </li>
 <li> Address
  <ul>
   <li> Validated</li>
  </ul>
 </li>
 <li> Date of Birth
 <ul>
  <li> Date</li>
  <li> Source - BRCT</li>
 </ul>
 </li>
 <li> Gender
 <ul>
  <li> other</li>
 </ul>
 </li>
 <li>	Ethnicity
  <ul>
   <li>32100 (Cook Islands Maori) and,</li>
   <li>12948 (South African) and,</li>
   <li>32100 (Cook Islands Maori)</li>
  </ul>
 </li>
 <li> New Zealand Citizenship Status
  <ul>
   <li>Status - yes</li>
   <li>Source - BRCT</li>
  </ul>
 </li>
</ul>
</td>
<td>
<li>Input: Minimum set of patient information can be provided </li>
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: All patient information can be displayed</li></td>
<td>Mandatory</td></tr>

<tr>
<td>NHI-Create-Patient-2</td>
<td>Application can create a new patient with the minimum set of patient information </td>
<td>Create a patient with a fictitious identity
<ul>
 <li> Name
  <ul>
   <li> Family only </li>
   <li> Source NPRF</li>
  </ul>
 </li>
 <li> Address
  <ul>
   <li> Validated</li>
  </ul>
 </li>
 <li> Date of Birth
  <ul>
  <li> Date</li>
  <li> Source - NPRF</li>
 </ul>
</li>
 <li> Gender
 <ul>
  <li> unknown</li>
 </ul>
 </li>
 <li>	Ethnicity - see below </li>
 <li> New Zealand Citizenship Status
  <ul>
   <li>Status - no</li>
   <li>Source - NPRF</li>
  </ul>
 </li>
</ul>
<img style="width:200px; float:none" src="update-core-2.png"/>
</td>
<td>
<li> Input: Minimum set of patient information can be provided </li>
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: All patient information can be displayed</li></td>
<td>Mandatory</td></tr>

<tr>
<td>NHI-Create-Patient-3</td>
<td>Application can create a new patient with the minimum set of patient information </td>
<td>Create a patient with:
<ul>
  <li> Name
  <ul>
   <li> Given, other given and family </li>
   <li> Source NPRF</li>
  </ul>
 </li>
 <li> Address
  <ul>
   <li> Validated</li>
  </ul>
 </li>
 <li> Date of Birth
  <ul>
  <li> Date month and year only</li>
  <li> Source - NPRF</li>
 </ul>
</li>
 <li> Gender
 <ul>
  <li>code - female</li>
  <li>original-text (optional)</li>
 </ul>
 </li>
 <li>	Ethnicity
  <ul>
   <li>97777 (response unidentifiable)</li>
  </ul>
 </li>
 <li> New Zealand Citizenship Status
  <ul>
   <li>Status - unknown	</li>
   <li>Source - NPRF</li>
  </ul>
 </li>
</ul>
Create a fictitious identity (this can be done using http://www.fakenamegenerator.com/)
</td>
<td>
<li>Input: Minimum set of patient information can be provided </li>
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: All patient information can be displayed</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-4</td>
<td>Application can supply additional identity information when creating a patient, including the fields:
<ul>
 <li>Date of death</li>
 <li>Birthplace</li>
</ul>
</td>
<td>Create a patient with the minimum set of patient information and the additional details below
<ul>
 <li>Date of death - if applicable
   <ul>
    <li> Date </li>
    <li> Information source </li>
   </ul>
 </li>
 <li>Birthplace
  <ul>
   <li> Country of birth </li>
   <li> Information source </li>
   <li> Place of birth </li>
  </ul>
 </li>
</ul></td>
<td>
<li>Input: Additional identity information can be provided </li>
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: All patient information can be displayed</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-5</td>
<td>Application can create a patient with an unvalidated patient address</td>
<td>Create a patient with minimum set of patient information, with an unvalidated patient address <br />
<b>Do all</b>
<ol>
 <li>OSEA</li>
 <li>UKWN</li>
 <li>NFAB</li>
 <li>NOSVC</li>
 <li>OTHER</li>
</ol>
</td>
<td>
<li>Input: All unvalidated address reasons can be provided </li>
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: All patient information can be displayed</li></td>
<td>Mandatory</td></tr>
</table>

<h4>NHI Create Patient error tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th>
</tr>

<tr><td> NHI-Create-Patient-error-1 <br /> Mandatory information</td>
<td>application will show the correct error when attempting to create a patient with a mandaotory attribute missing</td>
<td>Attempt to create a patient with a piece of mandatory information missing <b> Do all </b>
 <ol>
  <li> Name </li>
  <li> Date of birth </li>
  <li> Gender </li>
  <li> Ethnicity </li>
  <li> NZ Citizenship </li>
  <li> Address </li>
 </ol>
</td>
<td> Error: EM07201 "Patient name is a required field" <br />
Error: EM07201 "Patient Date of birth is a required field" <br />
Error: EM07201 "Patient gender is a required field" <br />
Error: EM07201 "Patient Ethnicity is a required field" <br />
Error: EM07201 "Patient NZ Citizenship is a required field" <br />
Error: EM07201 "Patient Address is a required field" </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-2 <br /> Address</td>
<td>Application will show the correct error when attempting to create a patient with an eSAM validated address where the nz address id does not match the first line of the validated address</td>
<td>
 <ul>
  <li> address-line: 24 Ranglesey Place </li>
  <li> nz-address-id: 1199146 </li>
  <li> address-type: physical</li>
 </ul>
</td>
<td> Error: "address-line must match the espatial value: ..."  </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-3 <br /> Address</td>
<td>Application will show the correct error when attempting to create a patient with the following unvalidated address without a domicile code</td>
<td>
 <ul>
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

<tr><td>NHI-Create-Patient-error-4 <br /> Address</td>
<td>Application will show the correct error when attempting to create a patient with an address with invalid characters</td>
<td>
 <ul>
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

<tr><td>NHI-Create-Patient-error-5 <br /> Address</td>
<td>Application will show the correct error when attempting to create a patient with an address that does not contain address line 1 </td>
<td>
 <ul>
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

<tr><td>NHI-Create-Patient-error-6 <br /> Address</td>
<td>Application will show the correct error when attempting to create a patient with an address missing a not validated reason</td>
<td>
 <ul>
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

<tr><td>NHI-Create-Patient-error-7 <br /> Name</td>
<td>application can display an error when no given and family name is present</td>
<td>Attempt to create a patient with no family or given name
   <ul>
    <li>Name use = nickname</li>
    <li>Source = PPRT</li>
    <li>Don't insert a family or given name</li>
   </ul></td>
<td>Output: EM02101 - "A Patient name must contain either a given or family name, a preferred name flag and an information source"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-8 <br /> Name</td>
<td>application can display an error when the given or family name contains special characters e.g. # @ % </td>
<td>Attempt to create a patient with a fictitious name (with special character) </td>
<td>Output: "Invalid request body"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-9 <br /> Name</td>
<td>application can display an error when a given or family name begins with a number e.g. 1Smith </td>
<td>Attempt to create a patient with a fictitious name (with a number as the first character) </td>
<td>Output: EM02107 "A Patient’s given and family name must start with a letter of the alphabet or an apostrophe"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-10 <br /> Name</td>
<td>application can display an error when a given or family name contains only whitespace/s </td>
<td>Attempt to create a patient with a name (containing only whitespace) </td>
<td>Output: EM02110 "Each populated Patient Name field must contain at least one letter"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-11 <br /> Name</td>
<td>application can display an error when no information source</td>
<td>Attempt to create a patient with a fictitious name
 <ul>
  <li>Name use = nickname</li>
  <li>source = PPRT</li>
  <li>Don't insert a information-source</li>
 </ul></td>
<td>Output: EM02101 - "A Patient name must contain either a given or family name, a preferred name flag and an information source."</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-12 <br /> Name</td>
<td>application can display an error when an invalid source is provided</td>
<td>Attempt to create a patient with a registered name source
 <ul>
  <li>source = BREG (Birth Register)</li>
 </ul></td>
<td>Output: EM07229 - "The patient name can only be set to a registered value by an authorised agency"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-13 <br /> Name</td>
<td>application can display an error when no preferred-name-flag</td>
<td>Attempt to create a patient with no preferred flag
 <ul>
  <li>Name use = nickname</li>
  <li>source = PPRT</li>
  <li>don't insert a preferred-name flag</li>
 </ul></td>
<td>Output: EM02101 - "A Patient name must contain either a given or family name, a preferred name flag and an information source."</td>
<td>optional</td></tr>

<tr><td>NHI-Create-Patient-error-14 <br /> Name</td>
<td>application can display an error when preferred-name = false</td>
<td>Attempt to create a patient with preferred flag = false
 <ul>
  <li>Name use = nickname</li>
  <li>source = PPRT</li>
  <li>preferred-name = false</li>
 </ul></td>
<td>Output: EM02101 - "A Patient name must contain either a given or family name, a preferred name and an information source."</td>
<td>optional</td></tr>

<tr><td>NHI-Create-Patient-error-15 <br /> Name</td>
<td>application can display an error when a Babyof name is supplied with a use other than 'temp' and a source other than 'NPRF'</td>
<td>Attempt to create a patient with babyof name
   <ul>
    <li> Name use = nickname </li>
    <li> source = PPRT </li>
   </ul></td>
<td>Output: EM07225 - "name-use-extra is conditional on source = NPRF and name use = temp"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-16 <br /> Ethnicity</td>
<td>application can display an error when attempting to create a patient with invalid ethnicity information <br /> contains multiple residual codes (9xxxx)</td>
<td>Create a Patient with the ethnicities below:
 <ul>
   <li> 97777 (response unidentifiable) </li>
   <li> and 99999 (not stated)</li>
 </ul></td>
<td>Output: EM02301 - "A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code" </td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-17 <br /> Ethnicity</td>
<td>application can display an error when attempting to create a patient with invalid ethnicity information <br /> set of supplied ethnicities that includes a duplicate ethnicity</td>
<td>Create a Patient with the ethnicities below:
 <ul>
<li>32100 (Cook Islands Maori) and,</li>
<li>12948 (South African) and,</li>
<li>32100 (Cook Islands Maori)</li>
 </ul></td>
<td>Output: EM02301 - "A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code" </td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-18 <br /> Gender</td>
<td>application can display an error when attempting to create a patient with a gender-original-text and no gender value</td>
<td>Attempt to create a patient with a gender-original-text (and not gender)</td>
<td>Output: EM07201 - "Is a required field - Patient.gender" </td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-19 <br /> Citizenship</td>
<td>application can display an error when attempting to create a patient with a NZ Citizenship information source without a NZ Citizenship status </td>
<td>Choose an NZ Citizenship information source to supply but do not add NZ Citizenship status </td>
<td>The format of the message is invalid (EM01002)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-20 <br /> Citizenship</td>
<td>application can display an error when when attempting to create a patient with a registered Citizenship information source </td>
<td>Attempt to create a patient with a citizenship
 <ul>
  <li> Citizenship = yes </li>
  <li> Attempt to add source = DIA </li>
 </ul></td>
<td>Output: EM07229 "Patient NZ Citizenship can only be set to a ‘Registered’ value by an authorised agency"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-21 <br /> Date of birth</td>
<td>application will show the correct error when attempting to create a patient with a bithdate in the future</td>
<td>Date of birth: A future date </td>
<td>EM07212 - Patient Date of birth cannot be a future date</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-22 <br /> Date of birth</td>
<td>application can display an error when when attempting to create a patient with a registered Date of birth information source </td>
<td>Attempt to create a patient with Date of birth source = BREG
 <ul>
    <li> Attempt to add source = BREG </li>
 </ul></td>
<td>Output: EM07229 "Patient Date of birth can only be set to a ‘Registered’ value by an authorised agency"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-23 <br /> Birthplace</td>
<td>Application will show the correct error when attempting to create a patient with a place of birth but no country of birth</td>
<td>Place of Birth: London <br />
Do not supply a country of birth </td>
<td>EM07202 - A place of birth must only be populated if a country of birth is populated</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-24 <br /> Birthplace</td>
<td>Application will show the correct error when attempting to create a patient with no information source</td>
<td>
 <ul>
  <li> Place of Birth: Whangarei </li>
  <li> Country of Birth: New Zealand </li>
  <li> Source: Do not add a source</li>
 </ul> </td>
<td>EM07202 - A place of birth must only be populated if a place of birth source is populated</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-25 <br /> Birthplace</td>
<td>Application will show the correct error when attempting to create a patient with no information source</td>
<td>
 <ul>
  <li> Source: PPRT</li>
 </ul> </td>
<td>EM07202 - A place of birth source must only be populated if birth locality information is populated</td>
<td>Mandatory</td></tr>
</table>

<h4>NHI Create Patient - death date</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th>
</tr>

<tr><td>NHI-Create-Patient-date-death</td>
<td>application can create a patient with a date of death</td>
<td>Create a patient with date of death</td>
<td>
<ul>
 <li>Input: date of death can be included when creating patient</li>
 <li>Output: New NHI is displayed with minimum dataset</li>
 <li>Output: NHI clearly shows patient deceased</li>
 <li> Output: Information source added as: TBC </li>
</ul></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-death-date-error-1</td>
<td>application will show the correct error when attempting to create a patient with a date of birth after the date of death supplied</td>
<td>
 <ul>
  <li> Date of birth: Todays date </li>
  <li> Date of death = Todays date -1 </li>
 </ul> </td>
<td>EM07215 - Patient Date of Death must be greater than, or equal to Patient Date of Birth</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-death-date-error-2</td>
<td>application will show the correct error when attempting to create a patient with a date of death in the future</td>
<td>
 <ul>
  <li> Date of death = future date </li>
  <li> Source: TBC </li>
 </ul></td>
<td>EM07212 - Patient Date of Death date cannot be a future date </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-death-date-error-3</td>
<td>application will show the correct error when attempting to create a patient with a date of death with no source</td>
<td>
 <ul>
  <li> Date of death = todays date </li>
  <li> Source: Don't add a source </li>
 </ul> </td>
<td>EM07202 - A date of death must only be populated if a date of death source is populated</td>
<td>Mandatory</td></tr>
</table>
