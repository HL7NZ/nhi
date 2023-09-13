### Compliance testing process

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
    * the output:
      * any error messages presented by the application
      * the confirmation or result of the request presented by the application
    * For update operations the state of the record pre-request should be included. 
    * **Note**: If non-interactive, please provide JSON request (update / add) or response (get/search).

3. For each test supply a timestamp when each request is sent.


### Compliance tests

Not all compliance tests in this implementation guide will be appropriate for every application. If there are tests that do not apply please discuss this with the integration team and where appropriate write a description in the compliance test submission why the particular test does not apply.

To request a template for the compliance tests either add a comment to your onboarding request form or reach out using the [Enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36).

<h4>Security and Audit Assessment</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><b>All test messages will be assessed against the security criteria in the table below</b></caption>
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

<h4>General tests</h4>
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
<td>The application reaches its usage plan limit and is returned an HTTP 429 error. <a href="general.html#usage-plans">See Usage plans</a></td>
<td>The application will retry several times with an exponentially increasing delay</td>
<td>Recommended</td></tr>

<tr><td>General-2</td>
<td>Application can present the NHI terms of use to individual user's when the integrating application first goes live for an Organisation. A reference terms of use is supplied <Link>, or the NHI terms of use can be included as part of the application's terms of use.</td>
<td><a href="TermsOfUse.html">See Terms Of Use</a></td>
<td><li>The application will display terms of use to the end user</li>
<li>The application must store the end users acceptance of the terms</li></td>
<td>Recommended</td></tr>
</table>

<h4>Extra tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><b>These are optional tests which help cover off the ability for applications to cope with new format NHI numbers and to incorporate other HIP services</b></caption>
<tr><th>Reference</th>
<th>Purpose</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>NHI-Extra-1</td>
<td>Get new format NHI <br /> application behaves appropriately when a new format NHI number is produced</td>
<td>
   <ul>
      <li>ZXE24NV</li>
      <li>ZUA48EH</li>
      <li>ZUT01RG</li>
   </ul>
</td>
<td>
      <li>Output:
         <ul>
            <li>Application does not error</li>
            <li>Minimum identity information is displayed for the patient</li>
         </ul>
      </li>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-2</td>
<td>Get dormant-1 <br /> application behaves appropriately when a request for a dormant new format NHI number returns a 'live' older format NHI number </td>
<td>
   <ul>
      <li>ZNK28DJ</li>
   </ul>
</td>
<td>
   <ul>
      <li> Input: user can enter new format NHI </li>
      <li> Output
      <ul>
         <li>application should return live record 'ZKP3424'</li>
         <li>application does not error when an older format NHI is returned.</li> 
         <li>Notification to the user that the requested NHI was dormant and the live NHI has been returned</li>
      </ul>
      </li>
   </ul>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-3</td>
<td>Get dormant-2 <br /> application behaves appropriately when a request for a dormat older format NHI number returns a 'live' new format NHI number </td>
<td>
   <ul>
      <li>ZKP3289</li>
   </ul>
</td>
<td>
   <ul>
      <li> Input: user can enter the older format NHI </li>
      <li> Output
      <ul>
         <li>application should return live record 'ZKP3424'</li>
         <li>application does not error when an older format NHI is returned.</li> 
         <li>Notification to the user that the requested NHI was dormant and the live NHI has been returned</li>
      </ul>
      </li>
   </ul>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-4</td>
<td>Search / Match new format NHI <br / application behaves appropriately when a new format NHI number is returned in a search response</td>
<td>Use an NHI Search / Match request to retrieve patients below<br />
   <ul>
      <li>ZXE24NV</li>
        <ul>
           <li>Family Name: Federstein </li>
           <li>Given Name: Franklin</li>
           <li>Date of birth:1999-04-04</li>
           <li>Gender: male</li>
        </ul>
   </ul>
   <ul>
      <li>ZUA48EH</li>
        <ul>
           <li>Family Name: Brady </li>
           <li>Given Names: Thomas, James</li>
           <li>Date of birth:1971-11-11</li>
           <li>Gender: male</li>
        </ul>
   </ul>     
   <ul>
      <li>ZUT01RG</li>
        <ul>
           <li>Family Name: Sparrow </li>
           <li>Given Names: James</li>
           <li>Date of birth:2000-11-12</li>
           <li>Gender: male</li>
        </ul>
   </ul>
</td>
<td>
<li>Input: Search criteria can be entered</li>
<ul>
   <li>Output:
      <ul>
         <li>Application does not error when new formt NHI returned</li>
         <li>Minimum identity information is displayed for the patient</li>
      </ul>
   </li>
</ul>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-5</td>
<td>Create new format NHI <br /> application can create a patient with a new format NHI number</td>
<td>
   <ul>
      <li>Family Name: NEWNHI</li>
      <li>Add all other relevant ficticious data</li>
   </ul>
</td>
<td>
   <ul>
      <li> Input: Create a new format NHI with Family name above </li>
      <li> Output:
         <ul>
            <li>Application can create a patient successfully</li>
            <li>Application does not error</li>
         </ul>
      </li>
   </ul>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-6</td>
<td>Update new format NHI <br />application can update a patient with a new format NHI number</td>
<td>
<li>Use NHI created above and update relevant attributes depending on use case
   <ul>
      <li>Birthdate</li>
      <li>Birthplace</li>
      <li>Gender</li>
      <li>Ethnicity</li>
      <li>Name</li>
      <li>Address</li>
      <li>NZ Citizenship status</li>
   </ul>
</li>
</td>
<td>
   <ul>
      <li> Input: User can input information to update</li>
      <li> Output:
         <ul>
            <li>Application can update a new format NHI successfully</li>
            <li>Application does not error</li>
         </ul>
      </li>
   </ul>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-7</td>
<td>Get enrolment for new format <br /> application can return enrolment information for a new format NHI </td>
<td>
   <ul>
      <li>ZKP3289</li>
   </ul>
</td>
<td>
   <ul>
      <li> Input: user can enter new format NHI </li>
      <li> Output: application can display enrolment information for new format NHI</li>
   </ul>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-8</td>
<td>Create enrolment for new format <br /> application can create an enrolment for a new format NHI number </td>
<td>
   <ul>
      <li>ZTL39SK</li>
      <li>ZWB84LW</li>
      <li>ZQF54PV</li>
   </ul>
</td>
<td>
   <ul>
      <li> Input: user can create an enrolment for a new format NHI </li>
      <li> Output: enrolment created successfully</li>
   </ul>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-9</td>
<td>Update enrolment for new format <br /> application can update an enrolment for a new format NHI number </td>
<td>
   <li> update one of the enrolments created above, do all relevant tests:</li>
   <ul>
      <li>Service Practitioner</li>
      <li>Re-enrolment date </li>
      <li>Qualified encounter date </li>
      <li>Termination Reason </li>
   </ul>
</td>
<td>
   <ul>
      <li> Input: user can update an enrolment for a new format NHI </li>
      <li> Output: enrolment updated successfully</li>
   </ul>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-10</td>
<td>Get Medical Warning for new format <br /> application can return Medical Warning information for a new format NHI </td>
<td>
   <ul>
      <li>ZAK21MS</li>
      <li>ZYC49PX</li>      
   </ul>
</td>
<td>
   <ul>
      <li> Input: user can enter new format NHI </li>
      <li> Output: application can display Medical Warning information for new format NHI</li>
   </ul>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-11</td>
<td>Create Medical Warning for new format <br /> application can create a Medical Warning for a new format NHI number </td>
<td>
   <ul>
      <li>ZTL39SK</li>
      <li>ZWB84LW</li>
      <li>ZQF54PV</li>
   </ul>
</td>
<td>
   <ul>
      <li> Input: user can create a Medical Warning for a new format NHI </li>
      <li> Output: Medical Warning created successfully</li>
   </ul>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-12</td>
<td>Update Medical Warning for new format <br /> application can update a Medical Warning for a new format NHI number </td>
<td>
<li> update one of the Medical Warnings created above</li>
</td>
<td>
   <ul>
      <li> Input: User can update a Medical Warning for a new format NHI </li>
      <li> Output: Medical Warning updated successfully</li>
   </ul>
</td>
<td>Optional</td></tr>

<tr><td>NHI-Extra-13</td>
<td>Get Health Care Event for new format NHI <br /> application can return Health Care Events for a new format NHI </td>
<td>
   <ul>
      <li>ZDP92ZR</li>
      <li>ZVE74QH</li>      
   </ul>
</td>
<td>
   <ul>
      <li> Input: user can enter new format NHI </li>
      <li> Output: application can display Health Care Events for new format NHI</li>
   </ul>
</td>
<td>Optional</td></tr>
</table>
