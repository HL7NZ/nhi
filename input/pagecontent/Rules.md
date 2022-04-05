

This page provides the rules for the NHI FHIR API.

### ADD Patient Rules

1. This page lists all Rules for Add patient. <br />
2. The rules are combine business, attribute and data rules. <br />
3. Rules are split up by Rule type. <br />
4. Some of these rules are relevant for other catgories e.g. Update name, address, core. <br />

<h3>Add Patient - Request rules</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th></tr>
<th>Parent</th></tr>

<tr>
<td>Request</td>
<td>BR RQ 200</td>
<td>Identity Confusion Definition </td>
<td>Identity confusion occurs when: <br /> 
- The identity information held for one patient is so similar to another patient, that the records may belong to the same patient OR <br />
- The identity information held for a given patient is modified in such a way that the old and new identity information could belong to different patients</td>
<td></td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 300</td>
<td>Duplication of identity</td>
<td>A request must not create a record which is a duplicate of another Patient’s identity</td>
<td></td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 500</td>
<td>Duplication of patient information</td>
<td>A request must not result in duplication of information for a Patient</td>
<td></td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 800</td>
<td>Modification of information source</td>
<td>A request must update the source of information only when the information is also provided.</td>
<td></td>
</tr>

<tr>
<td>Request</td>
<td>AR RQ 1000</td>
<td>Update to Registered value</td>
<td>An update which results in an attribute Status of Registered must only be submitted via an authorised Agency update</td>
<td>BR RQ 700</td>
</tr>

<tr>
<td>Request</td>
<td>DR RQ 5200</td>
<td>Requesting User Information</td>
<td>A web service request must contain User Attributes:  User ID (CPN)</td>
<td></td>
</tr>

<tr>
<td>Request</td>
<td>DR RQ 5300</td>
<td>Requesting Organisation Information</td>
<td>A web service request must contain Sending Organisation Attributes: <br /> 
- Organisation ID, <br />
- Facility ID, <br />
- Application, <br />
- Application Version</td>
<td></td>
</tr>

<tr>
<td>Request</td>
<td>DR RQ 5400</td>
<td>Request Information</td>
<td>A web service request must contain Request Attributes: <br />
- Correlation ID, <br />
- Business Transaction ID, <br />
- Creation Time, <br />
- Service Version, <br />
- Master Code Set Version</td>
<td></td>
</tr>
</table>


<h3>Add Patient - Core rules - Birth and Death</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th></tr>
<th>Parent</th></tr>

<tr>
<td>Core - Birth and Death</td>
<td>BR BD 100</td>
<td>Date of Birth</td>
<td>A Patient must have a date of birth, which must be:<br />
- After 1 January 1800, AND<br />
- Not a future date</td>
<td>AR BD 1100</td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>BR BD 200</td>
<td>Date of Death</td>
<td>A Patient may have a date of death, which must be:<br />
- After 1 January 1800, AND<br />
- On or after date of Birth, AND<br />
- Not a future date</td>
<td>AR BD 1100</td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>BR BD 300</td>
<td>Place and Country of Birth</td>
<td>A Patient may have:<br />
- A Place of Birth,<br />
- A Country of Birth</td>
<td>AR BD 1100</td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1000</td>
<td>Registered DOB Status Definition</td>
<td>A Registered Date of Birth is a date of birth which has been verified by a Government Agency 
(e.g. for Master Codeset 2.0, this would be a.  DOB which has a source of BREG, i.e. has been confirmed with a match to the Birth Register)</td>
<td>AR BD 1100</td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1100</td>
<td>Verified DOB Status Definition</td>
<td>A Verified Date of Birth is a date of birth for which acceptable documentary evidence has been sighted by the person recording the name
e.g. for Master Codeset 2.0, this would be a. DOB Source which is one of: <br />
- BRCT Birth Certificate, <br />
- NZCI NZ Certificate of Identity, <br />
- NZCT NZ Citizenship Certificate, <br />
- NZET NZ Emergency Travel Document, <br />
- NZPV NZ Permanent Resident Visa A New Zealand Permanent Resident Visa (not time bound) issued by Immigration New Zealand, <br />
- NZTV NZ Resident Visa A New Zealand Resident Visa (time bound) issued by Immigration New Zealand, <br />
- NZRT NZ Refugee Travel Document, PPRT Passport</td>
<td></td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1200</td>
<td>Unverified DOB Status Definition</td>
<td>A Unverified Date of Birth is a date of birth for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the name e.g. for Master Codeset 2.0, this would be a. source is one of: <br />
- NPRF No Proof Information provided (no proof) by patient/whanau, <br />
- OTHR Other official document</td>
<td></td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1300</td>
<td>Registered DOD Status Definition</td>
<td>A Registered Date of Death is a date of death which has been verified by a Government Agency e.g. for Master Codeset 2.0, this would be a DOD which has a source of DREG, i.e. has been confirmed with a match to the Death Register</td>
<td></td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1400</td>
<td>Provisional DOD status Definition</td>
<td>A Provisional Date of Death is an unverified date of death for a death taking place in New Zealand. e.g. for Master Codeset 2.0, this would be a DOD which has a source of PROV, i.e. has been recorded, and not yet registered</td>
<td></td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1500</td>
<td>Unverifiable DOD status Definition</td>
<td>An unverifiable Date of Death is a date of death for a death taking place outside New Zealand, which will not appear on the death register. e.g. for Master Codeset 2.0, this would be a. DOD which has a source of OSEA, i.e. has been notified by a third party</td>
<td></td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1600</td>
<td>Registered COB Definition</td>
<td>A Registered Country of Birth is either a place and country of birth, or a country of birth only, which has been verified by a Government Agency e.g. for Master Codeset 2.0, this would be a COB which has a source of BREG, i.e. has been confirmed with a match to the Birth Register</td>
<td></td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1700</td>
<td>Verified COB Definition</td>
<td>A Verified Birthplace is either a place and country of birth, or a country of birth only, for which acceptable documentary evidence has been sighted by the person recording the birthplace. e.g. for Master Codeset 2.0, this would be a. COB Source which is one of: <br />
- BRCT Birth Certificate, <br />
- NZCI NZ Certificate of Identity, <br />
- NZCT NZ Citizenship Certificate, <br />
- NZET NZ Emergency Travel Document, <br />
- NZPV NZ Permanent Resident Visa A New Zealand Permanent Resident Visa (not time bound) issued by Immigration New Zealand, <br />
- NZTV NZ Resident Visa A New Zealand Resident Visa (time bound) issued by Immigration New Zealand, <br />
- NZRT NZ Refugee Travel Document, PPRT Passport})</td>
<td></td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1800</td>
<td>Unverified COB Definition</td>
<td>A Unverified Country of Birth is either a place and country of birth, or a country of birth only, for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the birthplace</td>
<td></td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1900</td>
<td>Birth Information Source Update</td>
<td>A request to populate the Date of Birth Information Source must also populate the Date of Birth</td>
<td>BR RQ 800</td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 2000</td>
<td>Death Information Source Update</td>
<td>A request to populate the Date of Death Information Source must also populate the Date of Death</td>
<td>BR RQ 800</td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 2100</td>
<td>COB Information Source Update</td>
<td>A request to populate the Country of Birth Information Source must also populate the Country of Birth</td>
<td>BR RQ 800</td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 2200</td>
<td>Add Registered Birth Death Value</td>
<td>A web service request must not add any birth and death information with a Status of Registered, i.e. Registered Date of Birth, Registered Date of Death, Registered Country of Birth</td>
<td>BR RQ 700</td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>DR BD 5200</td>
<td>DOB real</td>
<td>The Date of Birth must be a date which is less than or equal to today’s date expressed in the same date format as the submitted date. i.e. if the date of birth format is: <br />
YYYYMMDD - DOB less than or equal to the current date; <br />
YYYYMM – less than or equal to the current month and year; <br />
YYYY – less than or equal to the current year</td>
<td>BR BD 100</td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>DR BD 5300</td>
<td>DOD real</td>
<td>The Date of Death must be a date which is less than or equal to today’s date expressed in the same date format as the submitted date. i.e. if the date of death format is: <br />
YYYYMMDD - DOD less than or equal to the current date; <br />
YYYYMM – less than or equal to the current month and year; <br />
YYYY – less than or equal to the current year</td>
<td>BR BD 200</td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>DR BD 5400</td>
<td>DOD on or after DOB</td>
<td>The Date of Birth must be less than or equal to the Date of Death</td>
<td>BR BD 200</td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>DR BD 5500</td>
<td>Place of Birth</td>
<td>A place of birth must only be populated if a country of birth is populated</td>
<td>BR BD 300</td>
</tr>
</table>


<h3>Add Patient - Core rules - Ethnicity</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th></tr>
<th>Parent</th></tr>

<tr>
<td>Core - Ethnicity</td>
<td>BR ET 100</td>
<td>Ethnicity</td>
<td>A Patient must have one active set of ethnicity information</td>
<td></td>
</tr>

<tr>
<td>Core - Ethnicity</td>
<td>BR ET 200</td>
<td>Replace ethnicity on update</td>
<td>A Patient must supply all ethnicities identified with when supplying ethnicity information</td>
<td></td>
</tr>

<tr>
<td>Core - Ethnicity</td>
<td>AR ET 1000</td>
<td>Acceptable Ethnicity information Definition</td>
<td>A valid set of Ethnicity information: <br />
- contains at least one, and up to 6, detailed (level four) ethnic groups, AND <br />
- each code appears only once in the set (i.e. no duplicate values), AND <br />
- contains a maximum of one residual code (9xxxx), AND <br />
- does not contain code 96666 (repeated value), AND <br />
- does not contain code 98888 (response out of scope) </td>
<td></td>
</tr>

<tr>
<td>Core - Ethnicity</td>
<td>AR ET 1100</td>
<td>Update Ethnicity</td>
<td>A Patient Core identity update to Ethnicity must have an acceptable set of ethnicity information</td>
<td>BR ET 100</td>
</tr>

<tr>
<td>Core - Ethnicity</td>
<td>DR ET 5000</td>
<td>Valid residual codes</td>
<td>n ethnicity update may contain a maximum of one residual (9xxxx) ethnicity code, and must: <br />
- contain only one 9xxxx code (i.e. a residual code must not be applied in conjuction with any other code), AND <br />
- not contain unused code 96666 (repeated value); AND <br />
- not contain unused code 98888 (response out of scope) </td>
<td>BR ET 1000</td>
</tr>
</table>


<h3>Add Patient - Core rules - Gender</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th></tr>
<th>Parent</th></tr>

<tr>
<td>Core - Gender</td>
<td>BR GD 100</td>
<td>Gender</td>
<td>A Patient must have a current gender</td>
<td></td>
</tr>
</table>


<h3>Add Patient - Core rules - Citizenship</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th></tr>
<th>Parent</th></tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>BR NZ 100</td>
<td>NZ Citizenship</td>
<td>A Patient may have an NZ Citizenship status</td>
<td></td>
</tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>AR NZ 1600</td>
<td>NZ Citizenship Information Source Update</td>
<td>A request to populate the NZ Citizenship Information Source must also populate the NZ Citizenship status value</td>
<td>BR RQ 700</td>
</tr>
</table>
