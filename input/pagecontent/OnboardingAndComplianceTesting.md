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
9. Each organisation using your application with NHI integrated services must apply individually for access to the production environment by completing the production form[Click here for more infrmation](https://www.health.govt.nz/our-work/health-identity/national-health-index/nhi-information-health-providers).


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
<li>All Contacts</li>
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
<td>Mandatory</td></tr>

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
<li>Given Name(s), Surname</li>
<li>Gender</li>
<li>Partial or full date of birth</li>
And to show that the application displays at least the minimum required attributes in a search result:
<li>Given Name(s), Surname</li>
<li>Gender</li>
<li>Birthdate</li>
<li>Primary Address</li>
<li>Date of Death</li>
<li>NHI Identifier</li>
<li>Match Score</li>
<li>Display a flag/indicate when a patient in the search result has multiple names</li>
The application must display multiple results if they are returned. Results must be presented in descending order of the match score</td>
<td>Given Name: Noah <br />
Middle Name: James <br />
Surname: Owen <br />
Gender: M <br />
DOB: 1949-10-30 (30th October 1949)</td>
<td>Input: Minimum search criteria can be entered <br />
Output: The top result returned in the search should be NHI ZBH6793 <br />
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

<h3>NHI Patient Match tests - These tests are only required if the application is not implementing Patient Read</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption> **Only complete these if you are not completing the ‘NHI Patient GET tests’** </caption>
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
Given Names: Jamie, Susan
Birthdate:25-08-1977 <br />
Gender: Female
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
Gender: Female
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
<li>All Contacts</li>
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
Output: All identity information is displayed for the patient. The patient:
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
Output: All identity information is displayed for the patient. This is for a patient record that has partial information in some fields. The patient has:
<li>A not validated physical address</li>
<li>Partial date of death</li>
<li>Partial date of birth</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Match-8 (NHI-Get-6)</td>
<td>application can receive and display NHI responses that have fields populated with the maximum allowable sizes (e.g. A given name of 50 characters, Other given name(s) of 100 characters, Surname of 100 characters).</td>
<td>Use a Match request to retrieve ZBE4905 and demonstrate how you display the NHI details <br />
Family Name: SurnameVeryLongLongLongnamewithtoomanycharactersVeryVeryVeryLongLongLongnamewithtoomanycharacters <br />
Given Names: GivenVeryVeryLongLongLongnamewithtoomanycharacters, MiddleVeryLongLongLongnamewithtoomanycharactersVeryVeryVeryLongLongLongnamewithtoomanycharacters <br />
Birthdate:01-01-1974 <br />
Gender: Female </td>
<td>Input: Above criteria can be entered <br />
Output: The application can manage a patient record that has attribute values which are the maximum allowed field length in some fields <br />
The patient has the following fields fully populated in the test record (field lengths in parentheses):
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
<td>Use a Match request to retrieve ZCX7065, using details:
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
<td><td>Input: Above criteria can be entered <br />
Output: All address formats are displayed appropriately</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Match-12 (NHI-Get-10)</td>
<td>application can handle a response when a patient has <br /> only a surname; <br /> only a given name; <br /> multiple names</td>
<td> Use a Match request to retrieve <b>all of the following</b> and demonstrate how you display the NHI details <br />
1. <b>ZAU8023</b> <br />
Family Name: Magi <br />
Birthdate:01-01-2012 <br />
Gender: Unknown <br />
2. <b>ZAV8657</b> <br />
Given Name: Cambridge <br />
Birthdate:12-04-1960 <br />
Gender: Male <br />
3. <b>ZHS7524</b> <br />
Family Name: MultipleAddress <br />
Given Name: Francis <br />
Birthdate:12-12-1982 <br />
Gender: Male <br /> </td>
<td>Input: Above criteria can be entered for the 3 Match scenarios <br />
1. Output: The top result returned is NHI: ZAU8023 <br />
2. Output: The top result returned is NHI: ZAV8657 <br />
3. Output: The top result returned is NHI: ZHS7524 <br />
Output: Application does not error <br /> Application returns all name parts when present <br /> Order of name parts is clear to the user</td>
<td>Mandatory</td></tr>
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
