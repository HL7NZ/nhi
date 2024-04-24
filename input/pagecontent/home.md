<html>
<body>

<header>
  <h3>Name</h3>
</header>

National Health Index FHIR API

<div>

<header>
  <h3> Brief Description</h3>
</header>

The purpose of the National Health Index (NHI), including the National Health Index number (NHI number), is to help with the planning, coordination and provision of health and disability support services across New Zealand.
The NHI number is the unique identifier for all patients who receive healthcare in NZ and is the cornerstone of clinical and administrative patient-related information. Very rarely do health providers rely on names alone for identifying patients. The NHI number identifies the patient for referrals, visits to the hospital, tests, medication prescriptions and patient-related correspondence. Correct identification of the patient is a critical aspect of clinical safety.
The NHI number ties together all patient information and patient systems. The NHI number is on patient labels, which are used on most items of patient documentation, from pharmaceutical labels to discharge summaries.
Where regional services exist, such as centralised diagnostic services, health providers may receive the diagnostic results electronically from an external source.
The NHI number is used to ensure that the results are associated with the correct patient.
For more information, <a href="https://nhi-ig.hip.digital.health.nz/businessView.html" target="_blank">please go here:</a>

</div>

<div>

<header>
  <h3> Overview</h3>
</header>

This is a FHIR API made up of two resources:
<ul>
  <li> NHIPatient, derived from the HL7 FHIR Patient resource.</li>
  <li> NHIAddress, derived from HL7 FHIR Address data type.</li>
</ul>.

</div>

<div>

<header>
  <h4> NHI Number format</h4>
</header>

NHI numbers have one of 2 formats:
<ul>
  <li>AAANNNC (3 alpha, 3 numeric and one numeric check digit) – in current circulation</li>
  <li>AAANNAX (3 alpha, 2 numeric, 1 alpha and one alpha check digit). This format will be first issued circa 2025.</li>
</ul>.

For more information, <a href="https://www.tewhatuora.govt.nz/our-health-system/claims-provider-payments-and-entitlements/nhi-number-format-changes/" target="_blank">please go here:</a>

</div>

<div>

<header>
  <h4> Accessible Data</h4>
</header>

The NHI holds the following information:

<ul>
  <li>name (including alternative names such as maiden names)</li>
  <li>NHI number</li>
  <li>address</li>
  <li>date of birth</li>
  <li>gender</li>
  <li>New Zealand citizenship status</li>
  <li>place of birth</li>
  <li>ethnicity</li>
  <li>date of death</li>
</ul>


The patient’s general practice and their phone and email contact details are not held in the NHI but are retrieved from the National Enrolment Service 
and NES Patient Preferences Service respectively, and returned along with the NHI details if the user has the correct permissions.

The Enrolled General Practitioner details may include:
<ul>
  <li>Enrolment id</li>
  <li>Period of enrolment</li>
  <li>HPI Practitioner</li>
  <li>HPI Organisation</li>
  <li>HPI Facility</li>
</ul>

The Contact details that may be returned include:
<ul>
  <li>Email address</li>
  <li>Home phone number</li>
  <li>Mobile phone number</li>
</ul>

</div>

<h3>Business functions & risk scores</h3>
<div>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Name</th>
<th>Function</th>
<th>Description</th>
<th>Clinical Risk Score</th>
<th>Privacy Risk Score</th>
<th>Security Risk Score</th>
<th>Identity Risk Score</th></tr>

<tr><td>Get Patient</td>
<td>Get Patient by id (using an NHI number)</td>
<td>Using a known NHI number, a GET Request is sent to the NHI, the request is validated and returns the patient data associated with the NHI number in the request.
Returned results include a range of demographic data required to confirm identity — for example, name, gender, ethnicity, date and place of birth, address and New Zealand citizenship status.</td>
<td>HIGH</td>
<td>HIGH</td>
<td>HIGH</td>
<td>Level 3</td>
</tr>

<tr><td>Get Patient - Enrolled GP</td>
<td>Get Patient by id and include the patient’s enrolled GP in the response</td>
<td>To include the patient’s enrolled General Practitioner information in the patient resource alongside the demographics. This is retrieved from the National Enrolment Service (NES).</td>
<td>HIGH</td>
<td>HIGH</td>
<td>HIGH</td>
<td>Level 3</td>
</tr>

<tr><td>Get Patient - Contact details</td>
<td>Get Patient using an NHI number and include the patient’s contact details in the response</td>
<td>To include the patient’s contact details in the patient resource alongside the demographics. This is retrieved from the NES Patient To include the patient’s contact details in the patient resource alongside the demographics. This is retrieved from the NES Patient Preferences service.</td>
<td>HIGH</td>
<td>HIGH</td>
<td>HIGH</td>
<td>Level 3</td>
</tr>

<tr><td>Search Patient</td>
<td>Search Patient using name, birthdate and other demographics</td>
<td>A SEARCH Request is used when the NHI number is not known. The request is validated and data of patients matching the search criteria is returned in order of relevance. It returns only the core NHI fields (No enrolled GP or contact details even if the user has the correct permissions).
Search parameters include, name, date of birth, gender, place of birth and address.</td>
<td>HIGH</td>
<td>HIGH</td>
<td>HIGH</td>
<td>Level 3</td>
</tr>

<tr><td>Maintain Patient</td>
<td>Update Patient records</td>
<td>Provided on a limited basis to primary and secondary healthcare providers, and health system data quality teams. <br /> Attribute dependent. <br /> 
Allows access to the following operations:
<ul>
  <li> Update Name (add, replace, inactivate, and set-preferred name). </li>
  <li> Update Address (Set validated address, set-unvalidated-address, remove postal address)</li>
  <li> Update Identity (gender and ethnicity).</li>
  <li> Update Birth (birthdate and birthplace).</li>
  <li> Update Eligibility (NZ Citizenship status).</li>
</ul>
</td>
<td>HIGH</td>
<td>EXTREME</td>
<td>HIGH</td>
<td>Level 3</td>
</tr>

<tr><td>Create Patient</td>
<td>Create Patient records</td>
<td>Provided on a limited basis to primary and secondary healthcare providers. Used to add new patients to the NHI.</td>
<td>EXTREME</td>
<td>EXTREME</td>
<td>HIGH</td>
<td>Level 3</td>
</tr>

<tr><td>Validate Patient</td>
<td>Validate Patient using an NHI number and patient demographics</td>
<td>A VALIDATE request is used when the NHI number and demographic details are known, but the requestor is not authorised to retrieve NHI details or they only need a match / no-match response. <br />
Validate parameters include NHI number, name, date of birth, gender, place of birth, and address.</td>
<td>HIGH</td>
<td>HIGH</td>
<td>HIGH</td>
<td>Level 3</td>
</tr>
</table>

</div>

<div>

<header>
  <h3>Who can use this API</h3>
</header>

Health providers listed in Schedule 2 of the Health Information Privacy Code may access the information in the NHI.

This includes: 
<ul>
  <li>Accident Compensation Corporation (ACC)</li>
  <li> Department of Corrections Health Services</li>
  <li>Te Whatu Ora — Health New Zealand</li>
  <li>Health Practitioners</li>
  <li>Hospitals</li>
  <li>Independent Practitioner Associations</li>
  <li>MedicAlert Foundation — New Zealand Incorporated</li>
  <li>Manatū Hauora — Ministry of Health</li>
  <li>New Zealand Blood and Organ Service</li>
  <li>New Zealand Defense Force Health Services</li>
  <li>Pharmaceutical Management Agency of New Zealand</li>
  <li>Primary Health Organisations (PHOs)</li>
  <li>Maori Health Authority</li>
  <li>Ministry for Disabled People</li>
  <li>Any health agency that has a contract or is funded by the above list to provide health or disability services.</li>
</ul>

Te Whatu Ora — Health New Zealand assigns appropriate permissions and monitors and audits the actions of health provider use of the NHI.

</div>

<div>

<header>
  <h3>Use Cases</h3>
</header>

The below lists a few example outcomes that can be achieved when using the NHI API.

<ul>
  <li>System to System</li>
    <ul>
      <li>Check that you’re referring to the right person when communicating with another healthcare provider.</li>
      <li>Search the NHI using known patient demographics to find the correct NHI number for a person.</li>
      <li>Lookup the NHI record for a patient using their NHI number.</li>
      <li>Update a person’s details so the NHI mains it’s value as the source of truth.</li>
      <li>Create a new NHI number for a person if they don’t have one (this is their first interaction with ta New Zealand health service).</li>
    </ul>
  <li>Patient (Consumer Facing Application Authentication)</li>
    <ul>
      <li>View their NHI details.</li>
      <li>Update their preferred name.</li>
      <li>Update gender and ethnicity details.</li>
      <li>Update address details</li>
    </ul>
</ul>

</div>

<div>

<header>
  <h3>Guidelines</h3>
</header>

Suggestions on how to implement the NHI FHIR API.
<ul>
  <li><a href="https://nhi-ig.hip-uat.digital.health.nz/guidance.html#a-new-patient-presents-for-healthcare" target="_blank">A new patient presents for healthcare</a></li>
  <li><a href="https://nhi-ig.hip-uat.digital.health.nz/guidance.html#a-returning-patient-presents-for-healthcare" target="_blank">A returning patient presents for healthcare</a></li>
  <li><a href="https://nhi-ig.hip-uat.digital.health.nz/guidance.html#a-notification-is-received-that-patient-details-have-changed" target="_blank">A notification is received that patient details have changed</a></li>
  <li><a href="https://nhi-ig.hip-uat.digital.health.nz/guidance.html#a-provider-notices-a-discrepancy-between-local-and-nhi-record-but-does-not-have-update-access" target="_blank">A provider notices a discrepancy between local and NHI record, but does not have update access</a></li>
  <li><a href="https://nhi-ig.hip-uat.digital.health.nz/guidance.html#a-user-needs-to-validate-an-nhi-number" target="_blank">A user needs to validate an NHI number</a></li>
  <li><a href="https://nhi-ig.hip-uat.digital.health.nz/guidance.html#look-up-the-patients-enrolled-general-practice-gp" target="_blank">Look up the patient’s enrolled General Practice</a> </li>
  <li><a href="https://nhi-ig.hip-uat.digital.health.nz/guidance.html#look-up-patients-contact-details" target="_blank">Look up patient’s contact details</a></li>
</ul>


Multi API use cases
<ul>
  <li>National Health Index and Health Provider Index</li>
    <ul>
      <li><a href="https://nhi-ig.hip-uat.digital.health.nz/guidance.html#lookup-edi-for-an-enrolled-patients-general-practice" target="_blank">Lookup the healthlink EDI for an enrolled patient’s General Practice</a></li>
    </ul>
</ul>

</div>

<div>
  
<header>
  <h3>API Type</h3>
</header>

REST API <br />
All REST API endpoints adhere to Fast Healthcare Interoperable Resources (FHIR) interoperability standards.

</div>

<div>

<header>
  <h3>Service Levels</h3>
</header>

Target 99.99% service availability 24x7.

</div>

<div>

<header>
  <h3>Restrictions</h3>
</header>

<header>
  <h4>GEO Restriction</h4>
</header>

GEO Restriction rules prevent access from clients with IPs located in countries other than those listed below:

<ul>
  <li>New Zealand</li>
  <li>Australia</li>
  <li>Canada</li>
  <li>Cook Islands</li>
</ul>

</div>

<div>

<header>
  <h4>API Keys and Usage Plans</h4>
</header>

API key's should be treated as confidential information and not shared with other parties

An api-key associates the client with a usage plan, which sets upper limits on the API request volume which is permitted. If a client exceeds their usage plan allocation an http error will be returned

Clients will need to add their api key to the x-api-key header in each API request. If no API key is included in the request header, a “Forbidden” error will be returned

<h5>Usage Plans</h5>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Plan </th>
<th> Rate </th>
<th> Burst </th>
<th> Quota </th></tr>

<tr><td> bronze </td>
<td> 1 request per second </td>
<td> 5 </td>
<td> 10,000 requests per day </td></tr>

<tr><td> silver </td>
<td> 5 requests per second </td>
<td> 25 </td>
<td> 250,000 requests per day </td></tr>

<tr><td> gold </td>
<td> 10 requests per second </td>
<td> 50 </td>
<td> 500,000 requests per day </td></tr>
</table>

</div>

<div>

All test accounts will be assigned to the bronze usage plan. If a Vendor wishes to be assigned to a higher plan, they should contact the Integration team via the <a href="https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36" target="_blank">General Enquiry form</a>. Please request a change to the usage plan and make sure you include the ClientID at minimum (AppId and Orgid also recommended).

Production accounts will be assigned to the silver usage plan. If an Organisation wishes to be assigned to the gold usage plan, they should contact the Te Whatu Ora
<a href="mailto:NHI_Access@health.govt.nz"_blank">NHI access team</a>

If an application reaches its usage plan limit an HTTP 429 error will be returned. The expected behaviour is that the application will retry several times with an exponentially increasing delay

</div>

</body>
</html>
