

### FHIR Interactions

#### GET Patient

The local system sends a request to the NHI with a patient NHI ID <br /> The NHI locates the NHI ID and returns either the current patient data for the NHI ID (where NHI ID is live) or the current patient data for the linked Live NHI ID (where the NHI ID is dormant).

The Patient ‘Get’ interaction is initiated by a local system request for the patient record data held in the NHI for a specified NHI ID. This may follow a NHI FHIR SEARCH interaction  where the user has selected a search result and wishes to view full NHI details to confirm the identity, or may follow a local system patient enquiry.  


<img style="width:900px; float:none" src="NHI FHIR GET.png"/>


**NHI FHIR GET processing steps:**
 
1. The user supplies an NHI number for a patient to be looked up.<br />

2. The integrating application sends an HTTP GET request for the Patient resource using the NHI number to identify the patient whose information is being requested. E.g. GET https://nhi.api.health.govt.nz/patient/ZAT2364<br />

3. The request is either:<br />
 * Validated (Step 4).<br />
 * ALT: Validation failure. Interaction Outcome resource returned<br />
 
4. The Patient details are either:<br />
 * Retrieved from the NHI (Step 5).<br />
 * ALT: NHI number not found. Interaction Outcome resource returned<br />
 
5. The response either:<br />
 * Contains the Patient details and is returned.<br />
 * ALT: Where an NHI is dormant, a response containing the patient details for the live NHI is returned.


#### Add Patient

An ‘Add Patient’ interaction is initiated by a user who needs to add a new identity record for a person to the NHI. The user has sourced the required identity information, and initiates an add request to create a patient identity record in the NHI. 

**NHI FHIR Add processing steps:**

1. The user initiates creating a new Patient in the integrating application
2. The integrating application sends an HTTP POST request (a FHIR create) containing the Patient details.
3. The request is either:
 * Validated (Step 4).
 * ALT: Validation failure. OperationOutcome resource returned
4. A Patient record is created and a Patient ID (NHI number) is issued.
5. The NHPI FHIR API confirms a successful update – HTTP 200
6. The integrating application indicates to the user the create has been successful.
7. The integrating application retains the Patient NHI ID for subsequent update requests.

##### Add patient rules

* This is a list of the rules that apply to the NHI Add patient interaction. For the rule details click the link on each rule or see [master rule set]().

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
<th>Rule description</th>
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
<th>Rule description</th>
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
<th>Rule description</th>
<th>Parent</th></tr>

<tr>
<td>Core - Gender</td>
<td>BR GD 100</td>
<td>Gender</td>
<td>A Patient must have a current gender</td>
<td> </td>
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
<th>Rule description</th>
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
<th>Rule description</th>
<th>Parent</th></tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>BR NZ 100</td>
<td>NZ Citizenship</td>
<td>A Patient may have an NZ Citizenship status</td>
<td> </td>
</tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>AR NZ 1600</td>
<td>NZ Citizenship Information Source Update</td>
<td>A request to populate the NZ Citizenship Information Source must also populate the NZ Citizenship status value</td>
<td>BR RQ 700</td>
</tr>
</table>


<h3>Add Patient - Name rules</h3>
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
<th>Rule description</th>
<th>Parent</th></tr>

<tr>
<td>Name</td>
<td>DR NM 5000</td>
<td>Mandatory Name Data</td>
<td>A Patient Name Request must include the following information:<br />
- At least one of {Given Name, Family Name}, AND <br />
- Preferred Name Flag</td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Name</td>
<td>DR NM 5200</td>
<td>Other Given Names</td>
<td>Patient ‘Other Given Names’ are only allowed if the given name is populated</td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Name</td>
<td>DR NM 5300</td>
<td>Name Excluded Characters</td>
<td>A Patient Given Name, Other Given Names, and Family Name can include only the following characters: <br />
Alphas (A-Z or a-z), hypens(-), spaces, apostrophes(', submitted in un-escaped form). <br />
NHI Legacy HL7 messages cannot accept international characters. <br />
Web services are expected to extend to support International characters once HL7 messaging is no longer in use. <br />
International Language characters: Macrons (Maori) - â, â, Â, ç, Ç, î, Î, ô, Ô, û, Û, Umlauts (German) - ä ö ü ß Ä Ö Ü , l'accent aigu (French)- é, l'accent grave (French)- è à ù, l'accent circonflexe (French)- â ê î ô û, le tréma (French)- ë ï, la cedilla (French)- ç </td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Name</td>
<td>DR NM 5400</td>
<td>Name First Letter</td>
<td> The first character of a Patient First Name, and a Patient Family name must be one of: <br />
- Alphas (A-Z or a-z), <br />
- apostrophes(')</td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Name</td>
<td>DR NM 5500</td>
<td>Name Minimum Alpha character</td>
<td>A name field which is not null must contain at least one alphabetic character</td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Name</td>
<td>DR NM 5600</td>
<td> Effective To Date </td>
<td> A Patient Name Effective To Date must be greater than or equal to: <br />
- the Patient Name Effective From Date, AND <br />
- the Patient Date of Birth </td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 1000 </td>
<td> Preferred Name Protection </td>
<td> A Name which is the preferred name must be a name which is not protected </td>
<td>BR RQ 1000 </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 1200 </td>
<td> Adding Name Protection </td>
<td> Name Protection Status must only be set to ‘protected’ by an authorised user </td>
<td> BR RQ 900 </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 1800 </td>
<td> Duplicate Name Check </td>
<td> A Name update request must not create a duplicate of an existing Name for an NHI number </td>
<td> BR RQ 500 </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 2100 </td>
<td> Registered Name Source </td>
<td> A Name update which results in a Name Status of Registered Name must only be submitted via an authorised Agency update </td>
<td> BR RQ 700 </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 2700 </td>
<td> Baby Of Name Source </td>
<td> Baby Of Name must have source of NPRF </td>
<td> BR RQ 1000</td>
</tr>

<tr>
<td>Name</td>
<td> BR NM 200 </td>
<td> Patient Preferred Name </td>
<td> A Patient must have one Active Name which is preferred </td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Name</td>
<td> BR NM 300 </td>
<td> Patient Active Names </td>
<td> A Patient may have a maximum of 200 active Names </td>
<td> BR RQ 1000 </td>
</tr>
</table>

<h3>Add Patient - Address rules</h3>
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
<th>Rule description</th>
<th>Parent</th></tr>

<tr>
<td>Address</td>
<td> DR AD 5000 </td>
<td> Address Mandatory Data </td>
<td> An Address must include the following information: <br />
- Street Address (line 1 of the customer provided address, AND <br />
- Address Type, AND <br />
- Primary Address Flag, AND <br />
- UserValidationStatus choice </td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Address</td>
<td> DR AD 5300 </td>
<td> Validated Address Match </td>
<td> The result of an address service 'find address' request using the values provided for the first four lines of the Address Location must: <br />
- result in a single validated address with a match score exceeding the match threshold, AND <br />
- have a unique Address ID matching the unique ID provided in the request</td>
<td> </td>
</tr>

<tr>
<td>Address</td>
<td> DR AD 5500 </td>
<td> Unvalidated Address Optional Data </td>
<td> Rule: A Patient Address may include the following information: <br />
- Building Name, Other Designation (Address Line 2), <br />
- Suburb (Address Line 3), <br />
- TownorCity (Address Line 4), <br />
- Province (Address Line 5), <br />
- Postal Code, <br />
- Country Code (Address Line 6), <br />
- latitude, <br />
- longitude, <br />
- Date Effective From, <br />
- Date Effective To, <br />
- Notional Domicile Code, <br />
- Permanent Address Flag, <br />
- Address protected Flag, <br />
- Validated Address Unique ID</td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Address</td>
<td> DR AD 5600 </td>
<td> Street Address Allowable Characters </td>
<td> The street address: <br />
- must contain at least one alphanumeric character, AND <br />
- may contain any of [A-Za-z0-9 and these special characters - /',], AND <br />
- the first character must be alphanumeric </td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1000 </td>
<td> Adding Address Protection </td>
<td> The Address Protection Status for an address must only be set to Yes (Protected) by an authorised user </td>
<td> BR RQ 900 </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1100 </td>
<td> Removing Address Protection </td>
<td> Address Protection flag must only be changed from Protected to unprotected by an authorised user </td>
<td> BR RQ 900 </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1200 </td>
<td> Validated Primary Residential Address </td>
<td> An validated Primary residential address must be a residential address i.e. Address Type must be 'Residential' i.e. it must be a physical address at which people can reside, Physical = Y, that is it is not a mailing only address. Note that an *unvalidated address* must also be residential.</td>
<td> BR RQ 900 </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1300</td>
<td> Primary Address Protection </td>
<td> A Patient Primary Residential Address must not be protected </td>
<td> BR RQ 900 </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1500</td>
<td> Unvalidated Primary Residential Address </td>
<td> An unvalidated Primary Residential Address must be a residential address </td>
<td> BR RQ 900 </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1800</td>
<td> Duplicate Address Check </td>
<td> An Address update request must not create a duplicate of an existing Address for an NHI number </td>
<td> BR RQ 500 </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1900</td>
<td> Allow dormant NHI address duplication </td>
<td> An active Address for a Patient’s live NHI number may be a duplicate of an Address for a linked dormant NHI number </td>
<td> BR RQ 500 </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 2000</td>
<td> Validated Residential Address must be Physical </td>
<td> An Address which is validated by eSAM, and has a type ‘residential’, must be a Physical Address (i.e. is Physical = Y)</td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 2100</td>
<td> Validated Mailing Address must be Deliverable </td>
<td> An Address which is validated by eSAM, and has a type ‘mailing’, must be a deliverable Address (i.e. ‘Deliverable’ = Y)</td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 2200</td>
<td> Residential Address must have domicile code </td>
<td> A residential address must have at least one of: <br />
- domicile code (source - eSAM domicile code), <br />
- notional domicile code (source – web service call to location lookup file using address parameters), <br />
- notional domicile code (source - optional web service request address parameter)}</td>
<td> BR RQ 1000 </td>
</tr>

<tr>
<td>Address</td>
<td> BR AD 100 </td>
<td> Acceptable Patient Address </td>
<td> An acceptable Patient Address must be: <br />
- Validated by an Address Service; OR <br />
- User Qualified as: {complete, unable to validate (address known but will not validate, validation service not available); OR <br />
- not able to be validated (Unknown, No fixed Abode); OR <br />
- an overseas address (Overseas)}</td>
<td> </td>
</tr>

<tr>
<td>Address</td>
<td> BR AD 200</td>
<td> Patient Primary Residential Address </td>
<td> A Patient must have a single Primary Residential Address </td>
<td> </td>
</tr>

<tr>
<td>Address</td>
<td> BR AD 300</td>
<td> Patient Active Addresses </td>
<td> A Patient may have up to 3 active Addresses </td>
<td> </td>
</tr>
</table>
