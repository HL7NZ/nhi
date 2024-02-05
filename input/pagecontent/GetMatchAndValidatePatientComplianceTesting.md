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
<li>Primary Address - including the building name</li>
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

<h4>NHI Patient GET tests - Enrolled GP</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption> <b>Only complete these if you have permission to vew a patient's enrolled GP </b> </caption>
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
</table>

<h4>NHI Patient GET tests - Contact details</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption> <b>Only complete these if you have permission to vew a patient's contact details</b> </caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>


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
<caption> If the Match tests are being completed in the absence of Patient Get tests then please complete the section below <b>NHI Patient Match tests </b> (Minimum data requirements). <br /> This is not a common use case so please discuss with the integration team prior to implementing  </caption>
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
<caption> These tests are designed to prove minimum data requirements are met in the absence of doing the <b>NHI Patient GET tests</b> <br /> 
This is not a common use case so please discuss with the integration team prior to implementing  </caption>
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
<li>Primary Address - including the building name</li></td>
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


<h4>NHI Validate Patient tests</h4>
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

<tr><td>NHI-Validate-1</td>
<td>application makes appropriate use or displays correct messaging for a positive Patient Validate with the minimum validate criteria <br />
<ul>
  <li> NHI number</li>
  <li>Name</li>
  <li>Birthdate</li>
</ul>
</td>
<td>
   <ul>
     <li> NHI: ZJS7596</li>
     <li> Name
        <ul>
           <li>Given Name: Jamie</li>
           <li>Middle Name: Susan</li>
           <li>Family Name: Maraka</li>
        </ul>
      </li>
      <li>DOB: 1977-08-25 (25th August 1977)</li>
   </ul></td>
<td>
   <ul>
     <li> Input: Minimum validate criteria can be entered</li>
     <li> Output: The validate should return a successful result</li>
   </ul>
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Validate-2</td>
<td>application makes appropriate use or displays correct messaging for a positive Patient Validate using other validate criteria</td>
<td>
   <ul>
     <li> NHI: ZJS7596</li>
     <li> Name
        <ul>
           <li>Given Name: Jamie</li>
           <li>Middle Name: Susan</li>
           <li>Family Name: Maraka</li>
        </ul>
      </li>
      <li>Gender: Female</li>
      <li>DOB: 1977-08-25 (25th August 1977)</li>
     <li> Address
      <ul>
        <li>Line: 2 Tennyson Street</li>
        <li>Suburb: Napier South</li>
        <li>City: Napier</li>
        <li>Postcode: 4110</li>
      </ul>
     </li>
   </ul></td>
<td>
   <ul>
     <li> Input: Other validate criteria can be included</li>
     <li> Output: The validate should return a successful result</li>
   </ul>
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Validate-3</td>
<td>application makes appropriate use or displays correct messaging for a negative Patient Validate</td>
<td>
   <ul>
     <li> NHI: ZJK9604</li>
     <li> Name
        <ul>
           <li>Given Name: Jaime</li>
           <li>Family Name: jones</li>
        </ul>
      </li>
      <li>Gender: Female</li>
      <li>DOB: 1979-06-10 (10th June 1979)</li>
     <li> Address
      <ul>
        <li>Line: "PO Box 525", "Whanganui 4541"</li>
      </ul>
     </li>
   </ul></td>
<td>
   <ul>
     <li> Input: Validate criteria can be entered</li>
     <li> Output: The validate should return a negative result (Empty bundle)</li>
   </ul>
</td>
<td>mandatory</td></tr>
</table>
