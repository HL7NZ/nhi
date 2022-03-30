

### Who can apply for access?

#### To the test environment:

**TBD**


#### To the production environment:

**TBD**


### On-boarding

1. To apply for access to the NHI test environment email the following forms **(TBD)** to integration@health.govt.nz
   
2. Submit the results of the compliance tests below to [integration@health.govt.nz](mailto:integration@health.govt.nz).



### Compliance testing
Provide the following details in a test report and email to [integration@health.govt.nz](mailto:integration@health.govt.nz).

1. Tester details <br />
   a. Organisation Name <br />
   b. Application name and version <br />
   c.	NHI IG Version (New Zealand NHI Implementation Guide 0.10.0 - CI Build (https://0-9-snapshot.d39scuhbqd86l9.amplifyapp.com/index.html) <br />
   d. Test Script version <br />
   e. Testing start date and time and end date and time <br />
   f. Tester name and contact details <br />
   g. List of interactions included in your integration (eg GET Patient)
   
2. For each test supply screen shots of: <br />
   a. the input data as entered in the integrating system (“the system”) <br />
   b. any warnings or error messages presented by the system <br />
   c. the confirmation or result of the request presented by the system  <br />

### Tests

<html>
<h3>NHI Patient GET</h3>
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
<td>System displays the minimum patient information required to confirm identity:
<li>Preferred name including Given Name, Other Given Name(s), Surname</li>
<li>Date of Birth</li>
<li>Gender</li>
<li>Primary Address</li>
</td>
<td>ZAT2348</td>
<td>1.	Minimum identity information is displayed for the patient</td>
<td>Mandatory</td>
<tr>

<td>NHI-GET-2</td>
<td>System can display the Date of Death</td>
<td>ZAT2348</td>
<td>1.	The System alerts the user that the patient is deceased and provides the date of death.</td>
<td>Mandatory</td>
<tr>
 
<td>NHI-GET-3</td>
<td>System can display all other identity data returned by the NHI in a GET response including:
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
</td>
<td>ZAT2364</td>
<td>1. All identity information is displayed for the patient. The patient:
<li>Is alive</li>
<li>Has 3 names - a ‘baby of’  name, maiden name, preferred name</li>
<li>The preferred name should have all name parts populated</li>
<li>Has two residential addresses, the primary address is overseas and the other residential address is in NZ</li>
<li>Has a mailing address</li>
<li>Has six ethnicities</li>
<li>Is an NZ citizen</li>
</td>
<td>Mandatory</td>
<tr>

<td>NHI-GET-4</td>
<td>This test is the same as HI-GET-3 but is for a patient that has information not covered in HI-GET-3<br>
System can display all other identity data returned by the NHI in a GET response including:
<li>A no fixed abode primary address</li>
<li>A live NHI and two Dormant NHIs</li>
<li>A year of birth and a year and month of death (partial dates)</li>
<li>Unknown citizenship</li>
</td>
<td>ZAT2496</td>
<td>1. All identity information is displayed for the patient. This is for a patient record that has partial information in some fields. The patient has:
<li>A validation status for the primary address</li>
<li>Domicile code</li>
<li>Partial date of death</li>
<li>Partial date of birth</li>
<li>Citizenship status</li>
<li>Dormant NHIs displayed</li>
</td>
<td>Mandatory</td>
<tr>

<td>NHI-GET-5</td>
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
<tr>
   
<td>NHI-GET-6</td>
<td>System can receive and display NHI responses that have fields populated with the maximum allowable sizes (e.g. A given name of 50 characters, Other given name(s) of 100 characters, Surname of 100 characters).</td>
<td>ZBE4905</td>
<td>1.	Patient information supplied is displayed without loss of data.
This is for a patient record that has attribute values which are the maximum allowed field length in some fields.
The patient has the following fields fully populated in the test record (field lengths in parentheses):
<li>A validation status for the primary address</li>
<li>Given name (50),</li>
<li>Other Given Name(s) (100),</li>
<li>Surname (100),</li>
<li>Address line 1 (100),</li>
<li>Address lines 2-5 (50),</li>
<li>Building name/additional details (255)</li>
</td>
<td>Mandatory</td>
<tr>

<td>NHI-GET-7</td>
<td>System behaves appropriately when a new format NHI number is produced</td>
<td>ZZZ00AX<br />
ZGT56KB<br />
ZHS91BR<br />
ZHW58CN<br />
ZLV86AX<br />
ZBE4905</td>
<td>
1.	System does not error<br />
2.	System returns appropriate messaging to user<td>
<td>Mandatory</td>
<tr>
   
<td>NHI-GET-8</td>
<td>System can synchronize with local system in response to the NHI version changing</td>
<td>ZCX7065</td>
<td>
1.	Do a GET<br />
2.	Use HealthUI to do an update to patient details (to simulate a 3rd party updating the NHI info)<br />
3.	Do another GET<br />
4.	Demonstrate how end use can view the difference then synchronize<td>
<td>Mandatory</td>
<tr>

<td>NHI-GET-9</td>
<td>System presents the address parts appropriately, including multiple addresses.</td>
<td>ZDW0191</td>
<td>1.	All address formats are displayed appropriately<td>
<td>Mandatory</td>
<tr>  
</html>

### Security and Audit Assessment

All test messages will be assessed for the following

<html>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose</th>
<th>Mandatory</th></tr>
<tr>

<td>Security 1</td>
<td>Credentials match those issued to the testing organisation</td>
<td>Mandatory</td>
<tr>

<td>Security 2</td>
<td>Sending user ID is an end user ID or a CPN.</td>
<td>Mandatory</td>
<tr>

<td>Security 3</td>
<td>Sending user ID changes when different end users are initiating the request</td>
<td>Mandatory</td>
<tr>
</html>
