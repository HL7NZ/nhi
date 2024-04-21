

### Name

National Health Index FHIR API

<div>

### Brief Description

The purpose of the National Health Index (NHI), including the National Health Index number (NHI number), is to help with the planning, coordination and provision of health and disability support services across New Zealand.
The NHI number is the unique identifier for all patients who receive healthcare in NZ and is the cornerstone of clinical and administrative patient-related information. Very rarely do health providers rely on names alone for identifying patients. The NHI number identifies the patient for referrals, visits to the hospital, tests, medication prescriptions and patient-related correspondence. Correct identification of the patient is a critical aspect of clinical safety.
The NHI number ties together all patient information and patient systems. The NHI number is on patient labels, which are used on most items of patient documentation, from pharmaceutical labels to discharge summaries.
Where regional services exist, such as centralised diagnostic services, health providers may receive the diagnostic results electronically from an external source.
The NHI number is used to ensure that the results are associated with the correct patient.
For more information, [please go here:](https://nhi-ig.hip.digital.health.nz/businessView.html).

</div>

<div>

### Overview

This is a FHIR API made up of two resources:
* NHIPatient, derived from the HL7 FHIR Patient resource.
* NHIAddress, derived from HL7 FHIR Address data type.

</div>

<div>

#### NHI Number format

NHI numbers have one of 2 formats:
*	AAANNNC (3 alpha, 3 numeric and one numeric check digit) – in current circulation
*	AAANNAX (3 alpha, 2 numeric, 1 alpha and one alpha check digit). This format will be first issued circa 2025.

For more information, [please go here:](https://www.tewhatuora.govt.nz/our-health-system/claims-provider-payments-and-entitlements/nhi-number-format-changes/)

</div>

<div>

#### Accessible Data

The NHI holds the following information:
*	name (including alternative names such as maiden names)
*	NHI number
*	address
*	date of birth
*	gender
*	New Zealand citizenship status
*	place of birth
*	ethnicity
*	date of death


The patient’s general practice and their phone and email contact details are not held in the NHI but are retrieved from the National Enrolment Service 
and NES Patient Preferences Service respectively, and returned along with the NHI details if the user has the correct permissions.

The Enrolled General Practitioner details may include:
* Enrolment id
* Period of enrolment
* HPI Practitioner
* HPI Organisation
* HPI Facility

The Contact details that may be returned include:
*	Email address
*	Home phone number
*	Mobile phone number

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

### Who can use this API

Health providers listed in Schedule 2 of the Health Information Privacy Code may access the information in the NHI.

This includes: 
* Accident Compensation Corporation (ACC)
* Department of Corrections Health Services
* Te Whatu Ora — Health New Zealand
* Health Practitioners
* Hospitals 
* Independent Practitioner Associations  
* MedicAlert Foundation — New Zealand Incorporated  
* Manatū Hauora — Ministry of Health   
* New Zealand Blood and Organ Service  
* New Zealand Defense Force Health Services
* Pharmaceutical Management Agency of New Zealand 
* Primary Health Organisations (PHOs)
* Maori Health Authority
* Ministry for Disabled People 
* Any health agency that has a contract or is funded by the above list to provide health or disability services.

Te Whatu Ora — Health New Zealand assigns appropriate permissions and monitors and audits the actions of health provider use of the NHI.

</div>

<div>

### Use Cases

The below lists a few example outcomes that can be achieved when using the NHI API.

* System to System
  * Check that you’re referring to the right person when communicating with another healthcare provider.
  * Search the NHI using known patient demographics to find the correct NHI number for a person.
  * Lookup the NHI record for a patient using their NHI number.
  * Update a person’s details so the NHI mains it’s value as the source of truth.
  * Create a new NHI number for a person if they don’t have one (this is their first interaction with ta New Zealand health service).
* Patient (Consumer Facing Application Authentication)
  * View their NHI details.
  * Update their preferred name
  * Update gender and ethnicity details
  * Update address details

</div>

<div>

### Guidelines

Suggestions on how to implement the NHI FHIR API.
* [A new patient presents for healthcare](https://nhi-ig.hip-uat.digital.health.nz/guidance.html#a-new-patient-presents-for-healthcare)
* [A returning patient presents for healthcare](https://nhi-ig.hip-uat.digital.health.nz/guidance.html#a-returning-patient-presents-for-healthcare)
* [A notification is received that patient details have changed](https://nhi-ig.hip-uat.digital.health.nz/guidance.html#a-notification-is-received-that-patient-details-have-changed)
* [A provider notices a discrepancy between local and NHI record, but does not have update access](https://nhi-ig.hip-uat.digital.health.nz/guidance.html#a-provider-notices-a-discrepancy-between-local-and-nhi-record-but-does-not-have-update-access)
* [A user needs to validate an NHI number](https://nhi-ig.hip-uat.digital.health.nz/guidance.html#a-user-needs-to-validate-an-nhi-number)
* [Look up the patient’s enrolled General Practice](https://nhi-ig.hip-uat.digital.health.nz/guidance.html#look-up-the-patients-enrolled-general-practice-gp)
* [Look up patient’s contact details](https://nhi-ig.hip-uat.digital.health.nz/guidance.html#look-up-patients-contact-details)

Multi API use cases
* National Health Index and Health Provider Index
  * Lookup the healthlink EDI for an enrolled patient’s General Practice](https://nhi-ig.hip-uat.digital.health.nz/guidance.html#lookup-edi-for-an-enrolled-patients-general-practice)

</div>

<div>
  
### API Type

REST API <br />
All REST API endpoints adhere to Fast Healthcare Interoperable Resources (FHIR) interoperability standards.

</div>

<div>

### Service Levels
Target 99.99% service availability 24x7.

</div>

<div>

### Restrictions

#### GEO Restriction

GEO Restriction rules prevent access from clients with IPs located in countries other than those listed below:
* New Zealand
* Australia
* Canada
* Cook Islands

</div>

<div>

#### API Keys and Usage Plans

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

All test accounts will be assigned to the bronze usage plan. If a Vendor wishes to be assigned to a higher plan, they should contact the Integration team via the [General Enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36) Please request a change to the usage plan and make sure you include the ClientID at minimum (AppId and Orgid also recommended).

Production accounts will be assigned to the silver usage plan. If an Organisation wishes to be assigned to the gold usage plan, they should contact the Te Whatu Ora [NHI access team](mailto:NHI_Access@health.govt.nz)

If an application reaches its usage plan limit an HTTP 429 error will be returned. The expected behaviour is that the application will retry several times with an exponentially increasing delay

</div>



