### Who can apply for access?

#### To the test environment:
All health providers listed in [Schedule 2 of the Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/) and software vendors will be given access to all the NHI api operations in the HIP Compliance environment for testing and training after completing the on-boarding process described below.


#### To the production environment:
Access to NHI operations is available to all health providers listed in [Schedule 2 of the Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/)


### On-boarding

1. To apply for access to the NHI test environment email [integration@health.govt.nz](mailto:integration@health.govt.nz). 
2. The Integration team will send you the relevant forms to complete.
3. Send the forms back to [integration@health.govt.nz](mailto:integration@health.govt.nz).
4. You will receive your credentials in seperate emails, one of which has a blank subject.
5. You will also recieve the access token url, provided scopes, and the UAT endpoint.
6. Complete your development and testing.
7. Submit the results of the compliance tests by email to [integration@health.govt.nz](mailto:integration@health.govt.nz).
8. The integration team will issue a compliance test report. Your application will receive certification to be used in production or additional requirements will need to be met.
9. Each organisation using your application with NHI integrated services must apply individually for access to the production environment by completing the production form [Click here for more infrmation](https://www.health.govt.nz/our-work/health-identity/national-health-index/nhi-information-health-providers) **Please allow at least 5 working days for these applications to be processed and production credentials issued. If your product is to be used by many different organisations please get in touch to discuss your rollout plans and how we might assist.**


### Compliance testing

Provide the following details in a test report and email to [integration@health.govt.nz](mailto:integration@health.govt.nz).

1. Tester details <br />
   a. Organisation Name <br />
   b. Application name and version <br />
   c.	NHI IG Version <br />
   d. Test Script version <br />
   e. FHIR release version (Get(Endpoint)/metadata) <br />
   f. Testing start date and time and end date and time <br />
   g. Tester name and contact details <br />
   h. List of operations included in your integration (eg GET Patient, Search(Match) Patient)
   
2. For each test supply screen shots of the user interface for:
    * the input data as entered in the integrating application (“the application”)
    * any warnings or error messages presented by the application
    * the confirmation or result of the request presented by the application
    * **Note**: If non-interactive, please provide JSON request (update / add) or response (get/search).

3. For each test supply a timestamp when each request is sent.

### Tests

<h3>Security and Audit Assessment</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption>**All test messages will be assessed against the security criteria in the table below**</caption>
<tr><th>Reference</th>
<th>Purpose</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>Security 1</td>
<td>Credentials match those issued to the testing organisation <br /> and their orgID and appID are auditing correctly</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

<tr><td>Security 2</td>
<td>Sending user ID is an end user ID or an hpi-person-id (CPN)</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

<tr><td>Security 3</td>
<td>Sending user ID changes when different end users are initiating the request (Please make sure a seperate user creates a request)</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>
</table>

<h3>General tests</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption>**These tests apply to all integrations** </caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory / Optional / Recommended</th></tr>

<tr><td>General-1</td>
<td>Application can handle an HTTP 429 error in a graceful way</td>
<td>The application reaches its usage plan limit and is returned an HTTP 429 error (See 'Usage Plans' in the 'General Notes')</td>
<td>The application will retry several times with an exponentially increasing delay</td>
<td>Recommended</td></tr>
</table>

<h3>NHI Patient GET tests</h3>
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
<li>Preferred name including Given Name(s), Surname</li>
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
<td>*Mandatory if</td></tr>

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
<td>application can receive and display NHI responses that have fields populated with the maximum allowable sizes (e.g. A given name of 50 characters, Other given name(s) of 100 characters, Surname of 100 characters).</td>
<td>ZBE4905</td>
<td>Output: Patient information supplied is displayed without loss of data <br />
This is for a patient record that has attribute values which are the maximum allowed field length in some fields <br />
The patient has the following fields fully populated in the test record (field lengths in parentheses):
<li>Given name (50)</li>
<li>Other Given Name(s) (100)</li>
<li>Surname (100)</li>
<li>Address line 1 (100)</li>
<li>Address lines 2-5 (50)</li>
<li>Building name/additional details (255)</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-GET-7</td>
<td>application behaves appropriately when a new format NHI number is produced</td>
<td>ZZZ00AX<br />
ZGT56KB<br />
ZHS91BR<br />
ZHW58CN<br />
ZLV86AX<br />
ZBE4905</td>
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
<td>application can handle a response when a patient has <br /> only a surname; <br /> only a given name; <br /> multiple names</td>
<td> <b>Do all</b> <br /> ZAU8023 <br /> ZAV8657 <br /> ZHS7524 </td>
<td>Output: application does not error <br /> application returns all name parts when present <br /> Order of name parts is clear to the user</td>
<td>mandatory</td></tr>
</table>

<h3>NHI Patient GET tests (enrolled GP and contact details only)</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption> **Only complete these if you have either permission to vew a patient's enrolled GP or contact details** </caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>NHI-GET-11</td>
<td>application can display the patients's enrolled General Practice details returned by the NHI in a GET response including
<li>The NES enrolment id</li>
<li>enrolment.startDate</li>
<li>enrolment.expiryDate</li>
<li>Practitioner identifier (CPN) and name</li>
<li>enrolling organisation ID and name</li>
<li>Facility ID and name</li></td>
<td> Enrolled GP - ZKC4641 <br /> Enrolled GP and Contact details ZKC4633 </td>
<td>Output: application does not error <br /> application returns all General Practice details when present </td>
<td>*Mandatory if</td></tr>

<tr><td>NHI-GET-12</td>
<td>application can display the patients's contact details returned by the NHI in a GET response including:
<li>Home phone</li>
<li>Mobile phone</li>
<li>Email address</li></td>
<td> Contact details - ZKC4650 <br /> Enrolled GP and Contact details ZKC4633 </td>
<td>Output: application does not error <br /> application returns all Contact details when present </td>
<td>*Mandatory if </td></tr>
</table>

<h3>NHI Patient Match tests</h3>
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
<li>Name (Given Name(s) and/or Surname)</li>
<li>Birthdate (Full or partial)</li>
And to show that the application can present the minimum details to allow for adequate confirmation of identity (if present on the patient record): 
<li>Name (Given Name(s), Surname)</li>
<li>Gender</li>
<li>Birthdate</li>
<li>Primary Address</li>
<li>Date of Death</li>
<li>NHI Identifier</li>
<li>Match Score</li>
<li>Display a flag/indicate when a patient in the search result has multiple names</li>
Note:
<li>The application must display multiple results if they are returned.</li>
<li>Results must be presented in descending order of the match score.</li></td>
<td>Given Name: Noah <br />
Middle Name: James <br />
Surname: Owen <br />
Gender: M <br />
DOB: 1949-10-30 (30th October 1949)</td>
<td>Input: Minimum search criteria can be entered <br />
Output: The top result returned in the search should be NHI ZAT4626 <br />
Output: Minimum search result identity attributes are all present in result list
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Match-2 (if applicable)</td>
<td> application allows the user to search with additional match criteria <br />
If the application is populating any of these other parameters in your Match request then do this one too <br />
The additional criteria includes:
<li>Address</li>
<li>Date of Death</li>
<li>Place of Birth</li>
<li>Country of Birth</li>
<li>Building name</li> </td>
<td>Given Name: Summer <br />
Middle Name: Barbara <br />
Surname: MacKenzie <br />
Gender: F <br />
Date of Birth: 28-09-1954 <br />
Street: 167 Springfield Road <br />
Suburb: St Albans <br />
townOrCity: Christchurch <br />
dateOfDeath:  1975-05 <br />
Place of Birth: Wellington <br />
Country of Birth: India (Code ‘IN’) <br />
Building name: Buildingnametest</td>
<td>Input: Additional Search Criteria can be populated <br />
Output: First result returned in the search result list should be NHI ZAT4642</td>
<td>mandatory (if applicable) </td></tr>

<tr><td>NHI-Match-3</td>
<td> application can manage many NHI resources in the response bundle and that results are presented in descending order of the match score </td>
<td> Given Name: Test <br />
Middle Name: <br />
Surname: Test <br />
Gender: M <br />
DOB: 31-12-1999 </td>
<td>Input: Above criteria can be entered <br />
Output: 10 results are returned <br />
Output: The top result returned is NHI: ZAX6965 Score: 99
</td>
<td>mandatory</td></tr>

<tr><td>NHI-Match-Error-1</td>
<td> application can return the appropriate error message to the user </td>
<td> Use a Match request to try and retrieve a record with Given Name: Rhetoric </td>
<td> Output: Expected error message: Date of Birth is a required </td>
<td>mandatory</td></tr>

<tr><td>NHI-Match-Error-2</td>
<td> application can return the appropriate error message to the user </td>
<td> Use a Match request to try and retrieve a record with birthdate Date of Birth: 28-09-1954 </td>
<td> Output: Expected error message: Name is required </td>
<td>mandatory</td></tr>
</table>

<h3>NHI Patient Match tests (Minimum data requirements)</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption> **Only complete these if you are not implementing Patient Read and completing the ‘NHI Patient GET tests’** </caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>NHI-Match-4 (NHI-Get-1)</td>
<td> the application displays the minimum patient information required to confirm identity:
<li>Preferred name including Given Name(s), Surname</li>
<li>Date of Birth</li>
<li>Gender</li>
<li>Primary Address</li></td>
<td>Use a Match request to retrieve ZJS7596 and demonstrate how you display the NHI details <br />
Family Name: Maraka <br />
Given Names: Jamie, Susan <br />
Birthdate:25-08-1977 <br />
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
Birthdate:14-07-1970 <br />
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
<td>Use a Match request to retrieve ZAT2364 and demonstrate how you display the NHI details <br />
Family Name: John <br />
Given Names: Levi, Sands <br />
Birthdate:26-02-1995 <br />
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
Birthdate:01-01-1914 <br />
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
Birthdate:01-01-1974 <br />
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
Birthdate:28-08-2020 <br />
Gender: Female <br />
2. <b>ZGT56KB</b> <br />
Family Name: Kucharski <br />
Given Names: Markus, Christoff <br />
Birthdate:06-09-2013 <br />
Gender: Male </td>
<td>Input: Above criteria can be entered <br />
Output: Application does not error</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Match-10 (NHI-Get-8)</td>
<td>application can synchronize with local system in response to the NHI version changing</td>
<td>Use a Match request to retrieve ZCX7065, using details: <br />
Family Name: ALLEN <br />
Given Name: JOSEPH <br />
Birthdate:01-04-1950 <br />
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
Birthdate:12-12-1982 <br />
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
Birthdate:01-01-2012 <br />
Gender: Unknown <br />
<b> 2. ZAV8657 </b> <br />
Given Name: Cambridge <br />
Birthdate:12-04-1960 <br />
Gender: Male <br />
<b> 3. ZHS7524 </b> <br />
Family Name: WILLIS <br />
Given Names: ELIZABETH, MARGARET <br />
Birthdate:15-06-2002 <br />
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


<h3>NHI Patient Maintain Address tests</h3>
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
<li>Add a new <b> primary residential address </b> to the patient record using the [$set-unvalidated-address operation](/updateAddress.html#set-unvalidated-address)</li>
<b>Do ALL</b><
<li> <b> 'unknown' unvalidated address </b> </li>
<li> <b> 'no fixed abode' unvalidated address </b> </li>
<li> <b> 'other' unvalidated address </b></li> </td>
<td>Input: An address request can be populated with the unvalidated address information <br />
Input: Best Practice is followed for adding addresses [See Best practice guide](https://www.health.govt.nz/system/files/documents/pages/identity-nhi-user-reference-information-best-practice-advice-sep21_8.pdf) and [address use case's](/updateAddress.html) <br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-5</td>
<td>application can replace the <b> primary residential address </b> on a patient record with an <b> Address Service Unavailable </b> unvalidated address </td>
<td><li>Use selected NHI number</li>
<li> Disable the external Address Service lookup</li>
<li> Show Address Service error </li>
<li> Add a new <b> primary residential address </b> to the patient record using the [$set-unvalidated-address operation](/updateAddress.html#set-unvalidated-address)</li></td>
<td>Input: An address request can be populated with NOSVC unvalidated address information<br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-6</td>
<td>application can replace the <b>postal address</b> on a patient record with an <b>Address Service Unavailable</b> unvalidated address</td>
<td><li>Use selected NHI number</li>
<li> Disable the external Address Service lookup</li>
<li> Show Address Service error </li>
<li> Add a new <b>postal address</b> to the patient record using the [$set-unvalidated-address operation](/updateAddress.html#set-unvalidated-address)</li></td>
<td>Input: An address request can be populated with NOSVC unvalidated address information<br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-7</td>
<td>application can replace the <b>postal address</b> on a patient record with an <b>Overseas</b> unvalidated address</td>
<td><li>Use selected NHI number</li>
<li> Add a new <b>postal address</b> to the patient record using the [$set-unvalidated-address operation](/updateAddress.html#set-unvalidated-address)</li></td>
<td>Input: An address request can be populated with overseas unvalidated address information<br />
Output: The address that is displayed to the end user is the address that is returned in the update response</td>
<td>mandatory</td></tr>

<tr><td>NHI-Maintain-Address-8</td>
<td>application can remove the <b>postal address</b> on a patient record</td>
<td><li>Use selected NHI number</li>
<li> Remove the <b>postal address</b> from the patient record using the [$remove-postal-address](/updateAddress.html#remove-postal-address)</li></td>
<td>Output: The patient record has Postal address removed</td>
<td>mandatory</td></tr>  
</table>


<h3>NHI Patient Maintain Name tests</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption> For the NHI Maintain 'core'tests. Please select one of the following NHI numbers and use this for all tests unless stated otherwise <br />
ZAY5549, ZAY5557, ZAY5565, ZAY5573, ZAY5581 </caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>
   
<tr><td>NHI-$add-name-1</td>
<td>application can add a name to a patient record</td>
<td>Add a nem to the selected NHI from list above with:
<li>a family name; AND</li>
<li>a given name; AND</li>
<li>one or more other given name(s); AND</li>
<li>preferred set to true; AND</li>
<li>name use 'nickname'; AND</li>
<li>a name prefix; AND</li>
<li>a name source (e.g. a passport – ‘PPRT’)</li></td>
<td>Input: An application can add a name to the patient record <br />
Output: The name is added to the patient record <br />
Output: The name is presented to the user with all name parts</td>
<td>mandatory</td></tr>

<tr><td>NHI-$add-name-2</td>
<td>application can add a name to a patient record</td>
<td>Add a name to the selected NHI from list above with:
<li>a family name only (no given name); AND</li>
<li>preferred set to false; AND</li>
<li>a name source (e.g. a birth certificate – ‘BRCT’)</li></td>
<td>Input: An application can add a name to the patient record <br />
Output: The name is added to the patient record <br />
Output: The name is presented to the user with all name parts</td>
<td>mandatory</td></tr>

<tr><td>NHI-$add-name-3</td>
<td>application can add a name to a patient record</td>
<td>Add a nem to the selected NHI from list above with:
<li>a given name only (no family name); AND</li>
<li>preferred set to false; AND</li>
<li>a name source (e.g. a birth certificate – ‘BRCT’)</li></td>
<td>Input: An application can add a name to the patient record <br />
Output: The name is added to the patient record <br />
Output: The name is presented to the user with all name parts</td>
<td>mandatory</td></tr>

<tr><td>NHI-$replace-name-1</td>
<td>application can set the patients preferred name</td>
<td>Replace a non-preferred name on a selected NHI from list above with a fictitious name that includes:
<li>a family name; AND</li>
<li>a given name; AND</li>
<li>one or more other given name(s); AND</li>
<li>preferred set to true; AND</li>
<li>name use 'maiden'; AND</li>
<li>a name prefix; AND</li>
<li>a name source (e.g. a passport – ‘PPRT’)</li></td>
</td>
<td>Input: An application can replace a non-preferred name from the active names list with a verified name<br />
Output: The preferred name that is displayed to the end user is the name that was selected in the operation with all name parts<br />
Output: The replaced name is not returned to the user</td>
<td>mandatory</td></tr>

<tr><td>NHI-$inactivate-name-1</td>
<td>application can inactivate a patients name</td>
<td>Inactivate a non-verified / non-preferred name on a selected NHI from list above</td>
<td>Input: Use $inactivate-name operation<br />
Output: The selected name is made inctive and not returned to the user</td>
<td>mandatory</td></tr>

<tr><td>NHI-$set-preferred-name-1</td>
<td>application can set the patients preferred name</td>
<td><li>Use NHI number ZZK09PQ</li>
<li>Do a Get Patient request to see active patient names</li>
<li>Change the preferred name from the current name to another active name for the patient using the [$set-preferred-name](/updateName.html#set-preferred-name)</li></td>
<td>Input: An application can select a Patients preferred name from the active names list<br />
Output: The preferred name that is displayed to the end user is the name that was selected in the operation<br />
Output: The name is presented to the user with all name parts</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-1 <br /> $add-name </td>
<td>application can display an error when the patient version is not current</td>
<td><li>Requires two users to update a name on the provided patient record</li>
<li>Use selected NHI number</li>
<li>User one retrieves a patient record (to retrieve the current patient version) and starts adding a name to the record using the <b>$add-name operation</b> and then pauses</li>
<li>User two retrieves the patient record and adds a fictitious name to the record using the $add-name operation</li>
<li>User one then completes their update to the name and should receive the error message</li></td>
<td>Output: EM02007 "Version number is incorrect"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-2 <br /> $add-name </td>
<td>application can display an error when the NHI provided in dormant</td>
<td>Attempt to add a fictitious name, using the <b>$add-name operation</b>, to NHI ZDV8901 </td>
<td>Output: EM02004 "The NHI Identifier provided is dormant. This record cannot be updated"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-3 <br /> $add-name </td>
<td>application can display an error when the patient has too many names</td>
<td><li>Attempt a add a fictitious name, using the <b>$add-name operation</b>, to NHI ZDJ6518. Given Name: John Charles Surname: Achilles</td>
<td>Output: EM02105 "A Patient must not have more than 200 active names"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-4 <br /> $add-name </td>
<td>application can display an error when an attempt to add a name that exists as an active name for that patient</td>
<td><li>Attempt to add the Given: RA, Family: Lumbago name to NHI ZKE9687 using the <b>$add-name operation</td>
<td>Output: EM07222 "The Patient Name already exists for this Patient"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-5 <br /> $add-name </td>
<td>application can display an error when adding a name that has been deleted from the patient record</td>
<td><li>Attempt to add a name to ZAD0152. Given Name: Amy. Surname: Alesana <br />
Name to add: Given Name: Amy. Surname: Johnson </td>
<td>Output: EM07008 - "The Patient name requested has been removed from the Patient record by NHI administration"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-6 <br /> $add-name </td>
<td>application can display an error when an invalid source is provided</td>
<td>Attempt to add a fictitious name to the patient provided where Name Source is Birth Register. <br />
Attempt to add a name to ZAA1578. Given Name: Keith. Surname: Gordon. Name Source: Birth Register</td>
<td>Output: EM07229 - "The patient name can only be set to a registered value by an authorised agency"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-7 <br /> $add-name </td>
<td>application can display an error when an invalid source is provided</td>
<td>Attempt to add a fictitious name to the patient provided where Name Source is Birth Register. <br />
Attempt to add a name to ZAA1578. Given Name: Keith. Surname: Gordon. Name Source: Birth Register</td>
<td>Output: EM07229 - "The patient name can only be set to a registered value by an authorised agency"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-8 <br /> $add-name </td>
<td>application can display an error when a Babyof name is supplied with a use other than temp and a source other than NPRF</td>
<td>Attempt to add a fictitious babyof name to the patient ZDM4902. Given Name: Sarah-Jayne, Margaret. Surname: Thomas. <br />
Name use = nickname, source = PPRT.</td>
<td>Output: EM07225 - "name-use-extra is conditional on source = NPRF and name use = temp."</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-9 <br /> $add-name </td>
<td>application can display an error when no given or family name is present</td>
<td>Attempt to add a fictitious name to the patient ZDM4902. Given Name: Sarah-Jayne, Margaret. Surname: Thomas. <br />
Name use = nickname, source = PPRT.</td>
<td>Output: EM02101 - "A Patient name must contain either a given or family name, a preferred name flag and an information source."</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-10 <br /> $add-name </td>
<td>application can display an error when the given or family name contains special characters e.g. # @ %</td>
<td>Attempt to add a fictitious name (with special character) to the patient. ZAZ1913. Given Name: Alan. Surname: Abbot </td>
<td>Output: "Invalid request body"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-11 <br /> $add-name </td>
<td>application can display an error when a given or family name begins with a number e.g. 1Smith </td>
<td>Attempt to add a fictitious name (with a number as the first character) to the patient. ZCV7765. Given Name: Sandra. Surname: Anderson</td>
<td>Output: EM02107 "A Patient’s given and family name must start with a letter of the alphabet or an apostrophe"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-12 <br /> $add-name </td>
<td>application can display an error when a given or family name contains only whitespace/s </td>
<td>Attempt to add a name (containing only whitespace) to the patient. ZDC0959. Given Name: Mary. Surname: Alansmore</td>
<td>Output: EM02110 "Each populated Patient Name field must contain at least one letter"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-13 <br /> $add-name </td>
<td>application can display an error when an attempt is made to add a name that already exists as an active name for the patient on the NHI</td>
<td>Attempt to add the name Sarah Adams, to the NHI, ZAG8796. Given Name: Sonya. Other Name: James. Surname: Adams </td>
<td>Output: EM07222 "The patient name already exists for this patient"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-14 <br /> $replace-name</td>
<td>application can display an error when an attempt to replace a verified name with an unverified</td>
<td>Attempt to replace the verified name (Given: RA, Family: Lumbago) on NHI ZKE9687, with a fictitious unverified name (name source = NPRF).</td>
<td>Output: EM0XXXX - "Cannot update a source to a lower level of proof"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-15 <br /> $inactivate-name</td>
<td>application can display an error when an authorised name is modified</td>
<td><li>Attempt to inactivate a name with source BREG on NHI ZKE9393. Given Name: Jonathan Joseph. Surname: Savage</td>
<td>Output: EM0XXXX "Information set to registered cannot be updated contact NHI administration"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-16 <br /> $inactivate-name</td>
<td>application can display an error when attempting to inactivate a verified name</td>
<td><li>Attempt to inactivate a name with source BCRT on NHI ZKE9687. Given Name: RA. Family name: Lumbago</td>
<td>Output: EM0XXXX "This information has a verified source and cannot be made inactive"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-17 <br /> $inactivate-name</td>
<td>application can display an error when attempting to modify an inactive name</td>
<td><li>Attempt to inactivate a name set id X on NHI X. Given Name: XX. Surname: X</td>
<td>Output: EM07223 "The <Patient> <Name> is not active and cannot be updated"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-18 <br /> $inactivate-name</td>
<td>application can display an error when an attempt is made to inactivate a preferred name </td>
<td>Attempt to inactivate preferred name Rosemary Alexander. ZBJ3544.Given Name: Rosemary, Thyme. Surname: Smith </td>
<td>Output: EM02104 "An active Patient Preferred Name must not be deleted"</td>
<td>mandatory</td></tr>

<tr><td>NHI-update-name-error-19 <br /> $inactivate-name</td>
<td>application can display an error when an attempt is made to inactivate a name with a verified source</td>
<td>Attempt to inactivate the name Michaela Aldom, from the NHI, ZDW1872. Given Name: Leslie. Surname: SULLIVAN </td>
<td>Output: EM07230 "Patient Name has been validated by a public Agency, and cannot be updated"</td>
<td>mandatory</td></tr>
</table>






<h3>NHI Patient Add tests</h3>
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
<td>NHI-Add-1</td>
<td>Application can add new patients to the NHI with the minimum set of patient information
<li>A given name and family name</li>
<li>A primary residential address</li>
<li>A DoB (no proof sighted)</li>
<li>Gender</li>
<li>Ethnicity</li>
<li>NZ citizenship (no proof sighted)</li></td>
<td>Add a patient to the NHI with the above details populated<br />
Create a false identity to use (this can be done using http://www.fakenamegenerator.com/), and add fictional information as required</td>
<td>New patient information can be populated:
1.	Name
 *	Given Name
 *	Family Name
2.	Address (as per address)
3.	Core
 *	Date of Birth
 *	Gender
 *	Ethnicity
 *	New Zealand Citizenship Status 
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: All patient information can be displayed</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-2</td>
<td>Application can supply additional identity information when adding a patient to the NHI, including the fields of:
<li>Date of death (and information source)</li>
<li>Locality of birth</li>
<li>Country of birth (and information source)</li></td>
<td>Add a patient to the NHI using the same details as the previous test, with additional details populated. Override the ‘duplicate’ warning after viewing the duplicate record <br />
Use values supplied for NHI-Add-1 and add fictional
<li>Date of Death</li>
<li>Date of death information source</li>
<li>Place of birth</li>
<li>Country of birth</li>
<li>Country of birth information source</li>
This will result in a patient that looks the same as that created in test NHI-Add-1 but with the added DoD and locality information. This should trigger the duplicate warning</td>
<td>New patient information can be populated:
1.	Name
 *	Given Name
 *	Family Name
2.	Address 
3.	Core
 *	Date of Birth
 *	Date of Birth Information Source
 *	Date of Death
 *	Date of Death Information Source
 *	Gender
 *	Ethnicity
 *	Place of Birth
 *	Country of Birth Code
 *	Country of Birth information Source 
 *	New Zealand Citizenship Status 
 *	New Zealand Citizenship Status Information Source 
<li>Output: ‘Duplicate’ warning is displayed</li>
<li>Output: Duplicate record is displayed</li>
<li>Input: Duplicate warning can be overridden</li>
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: New NHI can be displayed with full dataset</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-3</td>
<td>Application can add new patients to the NHI with minimum partial patient information
<li>A given name only</li>
<li>A primary residential address of ‘No fixed Abode’</li>
<li>A DoB which is a year only(no proof sighted)</li>
<li>Unknown gender</li>
<li>Unknown Ethnicity</li>
<li>NZ citizenship (no proof sighted)</li></td>
<td>Add a patient to the NHI with a No Fixed Abode address <br />
Create a false identity to use (this can be done using http://www.fakenamegenerator.com/) and enter the address as No Fixed Abode</td>
<td>New patient information can be populated: <br />
1.	Name
 *	Given Name only
2.	Address 
 *	No fixed abode
3.	Core
 *	Date of Birth as a year only
 *	Date of Birth Information Source
 *	Gender as Unknown
 *	Ethnicity as a single Residual code
 *	Country of Birth Code
 *	Country of Birth information Source
 *	New Zealand Citizenship Status
 *	New Zealand Citizenship Status Information Source
 *	Output: New NHI is displayed with minimum dataset</li></td>
<td>Mandatory</td></tr>
</table>

<h3>NHI Patient Add error tests</h3>
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

<tr><td>NHI-Add-error-4</td>
<td>Application will show the correct error when attempting to add a new patient with the supplied mailing (web services address type) address as the primary residential address</td>
<td>Address: 20 Aitken Street, Thorndon, 6011 <br />
Address type: mailing<br />
Is Primary: yes</td>
<td>The Primary Residential Address for a patient must be a residential address (EM04008)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-5</td>
<td>Application will show the correct error when attempting to add a patient with the supplied address as the primary residential address</td>
<td>Address to add for patient:<br />
Street address: 12 Streetaddress Road<br />
Town/City: Fictionville<br />
Qualifier: No fixed abode</td>
<td>A residential address must have a notional domicile code (EM02210)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-6</td>
<td>Application can handle the situation where eSAM is unavailable</td>
<td></td>
<td>A residential address must have a domicile code. The address validation service was not available to validate this address; and a notional domicile code was not provided for this address, and could not be automatically assigned (EM02211)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-7</td>
<td>Application will show the correct error when attempting to add patient with the supplied address that does not contain address line 1 (street address)</td>
<td>Address to create patient with:<br />
Suburb: Thorndon<br />
City: Wellington</td>
<td>The format of the message is invalid (EM01002)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-9</td>
<td>Application will show the correct error when attempting to add a street address that resolves to two addresses as in this example: <br />
80 monmourth road will resolve to
 * 80 monmourth road, Pembroke, Stratford 4394
 * 80 monmourth road, RD 24, Stratford 4394
Background: Some addresses in eSAM have more than one address recorded against the first line of the address <br />
Attempt to add a patient with the supplied unvalidated address and show how the Application behaves when a street address resolves to more than one eSAM address</td>
<td>Add a patient with the following address: <br />
 * ‘80 Monmouth Road, Stratford 4394’ 
Add this address as an unvalidated address with only the above information  <br />
If the Application submits an eSAM unique ID this error will not occur.</td>
<td>A validated address must result in a single unique address being returned by the NHI address validation service (EM04009) <br />
Note: the wording of this error message may be somewhat misleading; the ‘validated address’ refers to the validation that the MoH attempts to do on all addresses</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-10</td>
<td>Application will show the correct error when attempting to add a patient with the supplied address containing invalid characters</td>
<td>Address to add: 133$ Molesworth St<br />
TH()RN^Don<br />
Wellington^</td>
<td>The format of the message is invalid (EM01002)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-11</td>
<td>Application will show the correct error when attempting to add a patient with a name source of ‘Birth Register’</td>
<td>Supply a fictitious name and set the name source to ‘Birth Register’</td>
<td>The patient name source cannot be set to:
 * MIGR
 * HL7
 * BREG
using an update request (EM07229)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-12</td>
<td>Application will show the correct error when attempting to add a patient with a ‘Baby of’ name with a name source of something other than ‘NPRF’ (Proof not sighted)</td>
<td>Supply a fictitious name and set the Name Qualifier Code to: Baby of <br />
And <br />
Name Source to: e.g. Birth Registrar</td>
<td>A Patient ‘Baby Of’ Name Source must be set to ‘NPRF - Proof not Sighted (EM07225)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-13</td>
<td>Application will show the correct error when attempting to add a patient with a Name type only (no given or family name)</td>
<td>Supply only a name type</td>
<td>A Patient name must contain either a Given name or a Surname and a Name Type (EM02101)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-14</td>
<td>Application will show the correct error when attempting to add a patient with a name that only contains an ‘other given’ name and a surname</td>
<td>Supply fictitious name details</td>
<td>A user has populated other given names but not given name. <br /> 
Patient given name is required when patient other given name(s) is present (EM07202)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-15</td>
<td>Application will show the correct error when attempting to add a patient with a name where the given name or surname contains special characters e.g. # @ %</td>
<td>Supply fictitious name details with these characters # @ %</td>
<td>The format of the message is invalid (EM01002)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-16</td>
<td>Application will show the correct error when attempting to add a name where the given name or surname begins with a number e.g. 1Smith</td>
<td>Supply a fictitious name with a given and/or surname beginning with a numeral</td>
<td>A Patient’s given name and surname must start with a letter of the alphabet or an apostrophe (EM02107)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-18</td>
<td>Application will show the correct error when attempting to add a patient with the invalid set of ethnicities supplied <br />
A valid set of Ethnicity information: 
<li>contains at least one, and up to 6, detailed (level four) ethnic groups </li>
<li>each code appears only once in the set (i.e. no duplicate values) </li>
<li>contains a maximum of one residual code (9xxxx)</li></td>
<td>Ethnicities to use: <br />
97777 (response unidentifiable) <br />
and 99999 (not stated)</td>
<td>Error – unacceptable ethnicity values (EM02301)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-19</td>
<td>Application will show the correct error when attempting to add a patient with the set of supplied ethnicities that includes a duplicate ethnicity</td>
<td>Ethnicities to add patient with:<br />
Rarotongan (32121)<br />
South African (12948)<br />
Rarotongan (32121)</td>
<td>A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code (EM02301)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-20</td>
<td>Application will show the correct error when attempting to add a patient with a date of death information source but with no date of death</td>
<td>Choose a date of death information source without supplying a date of death</td>
<td>Patient Date of Death is required when Patient Date of Death Information Source is present (EM07202)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-21</td>
<td>Application will show the correct error when attempting to add a patient with a country of birth information source but with no country of birth</td>
<td>Choose a country of birth information source without supplying a country of birth</td>
<td>Patient Country of Birth is required when Patient Country of Birth Information Source is present (EM07202)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-22</td>
<td>Application will show the correct error when attempting to add a patient with the supplied date of birth in the future</td>
<td>Date of Birth: 22/06/2031</td>
<td>Patient date of birth cannot be a future date (EM07212)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-23</td>
<td>Application will show the correct error when attempting to add a patient with the supplied date of death in the future</td>
<td>Date of Death: 22/06/2041</td>
<td>Patient date of death cannot be a future date (EM07212)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-24</td>
<td>Application will show the correct error when attempting to add a patient with a date of birth after the date of death supplied</td>
<td>Date of death: 22/11/1982 <br />
Date of Birth: 01/02/2008</td>
<td>Patient date of birth must be less than, or equal to patient date of death (EM07214)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-25</td>
<td>Application will show the correct error when attempting to add a patient with a place of birth but no country of birth</td>
<td>Place of Birth: London <br />
Do not supply a country of birth </td>
<td>Patient country of birth is required when patient place of birth is present (EM07202)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Add-error-26</td>
<td>Application will show the correct error when attempting to add a patient with a NZ Citizenship information source without a NZ Citizenship status </td>
<td>Choose an NZ Citizenship information source to supply but do not add NZ Citizenship status </td>
<td>The format of the message is invalid (EM01002)</td>
<td>Mandatory</td></tr>
</table>
