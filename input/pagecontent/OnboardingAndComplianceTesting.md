

### Who can apply for access?

#### To the test environment:

All organisations and software vendors will be given access to the NHI GET **(and SEARCH TBD)** api operations in the NHI sandpit testing environment after completing the on-boarding process described below.


#### To the production environment:

Access to the NHI GET **(and SEARCH TBD)** interactions is available to all providers listed in [Schedule 2 of the Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/)

Organisations with existing NHI Data Access and terms of use agreements will be given access to NHI GET (and SEARCH) under those agreements.

Health providers without a terms of use agreement wanting access to NHI GET **(and SEARCH TBD)** will need to apply to the Ministry of Health. All consumers of the NHI are subject to the Privacy Act 1993 and the Health Information Privacy Code 2020. Privacy impact assessments and security assessments should be completed prior to applying for access to the NHI. The application will be assessed by the Ministry of Health Data Governance team and if granted an NHI Data terms of use agreement must be signed prior to credentials being issued to production.


### On-boarding

1. To apply for access to the NHI test environment email the following forms to integration@health.govt.nz
   a. privacy impact questionnaire  
   b. onboarding questionnaire
   c. access request form
   
   The Ministry will issue credentials for the testing endpoint within **tbd** days of receiving your application.
   
2. Submit the results of the compliance tests below to [integration@health.govt.nz](mailto:integration@health.govt.nz).
   (The Ministry will issue a compliance test report within **tbd** days of receiving your results).

3. Each organisation using an application with NHI integrated services must apply individually for access to the production environment by completing an access request form and email to [integration@health.govt.nz](mailto:integration@health.govt.nz).


### Compliance testing
Provide the following details in a test report and email to [integration@health.govt.nz](mailto:integration@health.govt.nz).

1. Tester details
   a. Organisation Name
   b. Application name and version
   c.	NHI IG Version (New Zealand NHI Implementation Guide 0.10.0 - CI Build (https://0-9-snapshot.d39scuhbqd86l9.amplifyapp.com/index.html)
   d. Test Script version
   e. Testing start date and time and end date and time
   f. Tester name and contact details
   g. List of interactions included in your integration (eg GET Patient)
   
2. For each test supply screen shots of:
   a. the input data as entered in the integrating system (“the system”)
   b. any warnings or error messages presented by the system
   c. the confirmation or result of the request presented by the system 

### Tests

#### NHI Patient GET

<h3>NHI Patient GET</h3>
<table>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>
<tr>
<td>NHI-GET-1</td>
<td>System displays the minimum patient information required to confirm identity:
<ul style=“list-style-type:square”>

<li>Preferred name including Given Name, Other Given Name(s), Surname</li>
<li>Date of Birth</li>
<li>Gender</li>
<li>Primary Address</li>
<li>Date of Death</li>
</ul>
</td>
<td>ZAT2348</td>
<td>1.	Minimum identity information is displayed for the patient</td>
<td>Mandatory</td>
<tr>
<td>NHI-GET-2</td>
<td>System can display all other identity data returned by the NHI in a GET response including:
<ul style=“list-style-type:square”>

<li>All patient names with all name parts</li>
<li>Name Information Source</li>
<li>Date of Birth Information Source</li>
<li>Ethnicity information</li>
<li>All patient addresses and address parts</li>
<li>All Contacts</li>
<li>NZ Citizenship status</li>
<li>Country of Birth</li>
<li>Country of Birth source</li>
<li>Place of Birth</li>
</ul>
</td>
<td>ZAT2364</td>
<td>1. All identity information is displayed for the patient. The patient:
<ul style=“list-style-type:square”>

<li>Is alive</li>
<li>Has 3 names - a ‘baby of’  name, maiden name, preferred name</li>
<li>The preferred name should have all name parts populated</li>
<li>Has two residential addresses, the primary address is overseas and the other residential address is in NZ</li>
<li>Has a mailing address</li>
<li>Has six ethnicities</li>
<li>Is an NZ citizen</li>
</ul>
</td>
<td>Mandatory</td>
<tr>
<td>NHI-GET-3</td>
<td>This test is the same as HI-GET-2 but is for a patient that has information not covered in HI-GET-2<br>
System can display all other identity data returned by the NHI in a GET response including:
<ul style=“list-style-type:square”>
<li>A no fixed abode primary address</li>
<li>A live NHI and two Dormant NHIs</li>
<li>A year of birth and a year and month of death (partial dates)</li>
<li>Unknown citizenship</li>
</ul>
</td>
<td>ZAT2496</td>
<td>1. All identity information is displayed for the patient. This is for a patient record that has partial information in some fields. The patient has:
<ul style=“list-style-type:square”>

<li>A validation status for the primary address</li>
<li>Domicile code</li>
<li>Partial date of death</li>
<li>Partial date of birth</li>
<li>Citizenship status</li>
<li>Dormant NHIs displayed</li>
</ul>
</td>
<td>Mandatory</td>
<tr>
<td>NHI-GET-4</td>
<td>System alerts the user that a requested NHI is dormant, and that the live NHI has been returned.
</td>
<td>ZAT2518</td>
<td><ol>
<li>Notification to the user that the requested NHI was dormant and the live NHI has been returned</li>
<li>Patient Live NHI returned should be ZAT2496</li>
<li>Minimum identity information for the live NHI is displayed for the patient</li>
</ol>
</td>
<td>Mandatory</td>
