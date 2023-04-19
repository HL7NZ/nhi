

### This page provides the master ruleset for the NHI FHIR API.

<h3>NHI Request Rules </h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th>
<th>Parent (Child) rule</th> 
<th>HTTP Error</th>
<th>Error Code</th>
<th>Error message</th>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 100 </td>
<td>Local Patient Record current</td>
<td>A system must source the most recent Patient Record from the NHI before creating a request to update the Patient record</td>
<td>(DR RQ 5000, DR RQ 5100)</td>
<td>??</td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 200</td>
<td>Identity Confusion Definition </td>
<td>Identity confusion occurs when: <br /> 
- The identity information held for one patient is so similar to another patient, that the records may belong to the same patient OR <br />
- The identity information held for a given patient is modified in such a way that the old and new identity information could belong to different patients</td>
<td> </td>
<td>??</td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 300</td>
<td>Duplication of identity</td>
<td>A request must not create a record which is a duplicate of another Patient’s identity</td>
<td></td>
<td>?? </td>
<td>WM02005</td>
<td>The patient identity information supplied may result in duplication of another identity. Are you sure this update is correct?</td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 400</td>
<td>Identity divergence</td>
<td>A request must not modify a record to the extent that the patient identity describes a different patient</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 500</td>
<td>Duplication of patient information</td>
<td>A request must not result in duplication of information for a Patient</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 600</td>
<td>Adding deleted information</td>
<td>A request must not result in information, removed  from a Patient Record by the Ministry of Health, being added </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 700</td>
<td>Modification of registered information</td>
<td>A request must not result in modification of information confirmed by authorised Agency (“registered” information)</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 800</td>
<td>Modification of information source</td>
<td>A request must update the source of information only when the information is also provided.</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 900</td>
<td>Modification of verified information</td>
<td>A request may modify active patient information for which evidence has been sighted (“verified” information)</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Request</td>
<td>BR RQ 1000</td>
<td>Modification of information which is not registered or verified</td>
<td>A request may modify active patient information which is not ‘registered’ or verified’ information.</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Request</td>
<td>AR RQ 1000</td>
<td>Update to Registered value</td>
<td>An update which results in an attribute Status of Registered must only be submitted via an authorised Agency update</td>
<td>BR RQ 700</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error message</td>
</tr>

<tr>
<td>Request</td>
<td>AR RQ 1100</td>
<td>Modify Registered Value</td>
<td>An update must not modify or delete any information with a Status of Registered</td>
<td>BR RQ 700</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error message</td>
</tr>

<tr>
<td>Request</td>
<td>AR RQ 1200 </td>
<td> Modify Source </td>
<td> A request to update the value for a given information source for a core identity field must also include a value for that core identity field (e.g. if DOB information source is provided, the DOB must also be populated) </td>
<td> BR RQ 800 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error message</td>
</tr>

<tr>
<td>Request</td>
<td>DR RQ 5000 </td>
<td> Local Patient Version </td>
<td> A Patient Update request must contain the version number of the current Patient Record</td>
<td> BR RQ 100</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error message</td>
</tr>

<tr>
<td>Request</td>
<td>DR RQ 5100 </td>
<td> NHI Status </td>
<td> A Patient Update request must contain the live NHI number for the Patient Record</td>
<td> BR RQ 100 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error message</td>
</tr>

<tr>
<td>Request</td>
<td>DR RQ 5210</td>
<td>Requesting User Information</td>
<td> Every request must include an http header item Userid that uniquely identifies the individual initiating the request</td>
<td>Parent (Child) rule</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error message</td>
</tr>

<tr>
<td>Request</td>
<td>DR RQ 5220</td>
<td>Requesting User Information</td>
<td>A UserID with format 99XXXX must be a valid HPI CPN (other formats for UserID are acceptable and will not be validated)</td>
<td>Parent (Child) rule</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error message</td>
</tr>

<tr>
<td>Request</td>
<td>DR RQ 5230</td>
<td>Requesting User Information</td>
<td>Userid supplied must be unique within the authenticated organisation. The organisation must be able to associate the userid with an individual user</td>
<td>Parent (Child) rule</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Note: Rule applied in the integrating system </td>
</tr>

<tr>
<td>Request</td>
<td>DR RQ 5300</td>
<td>Requesting Organisation Information</td>
<td>The OAUTH2 token must contain identifiers for the requesting organisation and application</td>
<td>Parent (Child) rule</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
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
<td>Parent (Child) rule</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Request</td>
<td>DR RQ 5500</td>
<td>Delete mandatory Error</td>
<td>A Patient identity update request cannot delete/inactivate mandatory data</td>
<td>Parent (Child) rule</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>
</table>

<h3>NHI Name Rules </h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th>
<th>Parent (Child) rule</th> 
<th>HTTP Error</th>
<th>Error Code</th>
<th>Error message</th>
</tr>

<tr>
<td>Name</td>
<td> BR NM 100 </td>
<td> Patient Name </td>
<td> A Patient must have at least one Active Name</td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> BR NM 200 </td>
<td> Patient Preferred Name </td>
<td> A Patient must have one Active Name which is preferred </td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> BR NM 300 </td>
<td> Patient Active Names </td>
<td> A Patient may have a maximum of 200 active Names </td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 1000 </td>
<td> Preferred Name Protection </td>
<td> A Name which is the preferred name must be a name which is not protected </td>
<td>BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 1100 </td>
<td> Non Preferred Name Protection</td>
<td> A non-preferred name may be protected (Name Protected Flag = 1) </td>
<td>BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 1200 </td>
<td> Adding Name Protection </td>
<td> Name Protection Status must only be set to ‘protected’ by an authorised user </td>
<td> BR RQ 900 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td>AR NM 1300</td>
<td> Removing Name Protection</td>
<td> Name Protection Status must only be changed from ‘protected’ by an authorised user</td>
<td> BR RQ 900 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td>AR NM 1400</td>
<td>Inactivate Name </td>
<td>A non-preferred name may be made inactive (an inactive name is. not returned in web service responses) </td>
<td> BR RQ 1000</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td>AR NM 1500</td>
<td> </td>
<td>A non-preferred name may be deleted  </td>
<td> OOS</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td>AR NM 1600</td>
<td> Selected Name Active</td>
<td>An existing Name must be active to be updated </td>
<td>BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td>AR NM 1700</td>
<td>Duplicate Name Definition </td>
<td> A Name is a duplicate name for a given NHI number if all name identity attribute values match the values for an existing name for that NHI. Name identity attributes are: <br />
- Name Prefix (Title), <br />
- Given Name, <br />
- Other Given Names, <br />
- Family Name, <br />
- Name Suffix </td>
<td> BR RQ 500</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 1800 </td>
<td> Duplicate Name Check </td>
<td> A Name update request must not create a duplicate of an existing Name for an NHI number </td>
<td> BR RQ 500 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 1900 </td>
<td> Allow dormant NHI Name duplication</td>
<td> An active Name for a Patient’s live NHI number may be a duplicate of a Name for a linked dormant NHI number: </td>
<td> BR RQ 500 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 2000 </td>
<td> Registered Name Definition</td>
<td> A Registered Name is a name which has been verified by a Government Agency (Currently, a name which has a source of BREG, i.e. has been confirmed with a match to the Birth Register) </td>
<td> BR RQ 700 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 2100 </td>
<td> Registered Name Source </td>
<td> A Name update which results in a Name Status of Registered Name must only be submitted via an authorised Agency update </td>
<td> BR RQ 700 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 2200 </td>
<td> Legacy Name Definition</td>
<td> A Legacy Name is a name for which the most recent update:was requested via a Legacy HL7 request, OR was the automated database migration process from the Legacy NHI database to the IBM Initiate NHI database jump</td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 2300 </td>
<td> Legacy Name Source</td>
<td> A 'Legacy Name' must only be submitted via a legacy HL7 update request</td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 2400 </td>
<td> Verified Name Definition</td>
<td> A Verified Name is a name for which acceptable documentary evidence has been sighted by the person recording the name; i.e. Name Source is one of: <br />
- BRCT Birth Certificate, <br />
- NZCI NZ Certificate of Identity, <br />
- NZCT NZ Citizenship Certificate, <br />
- NZET NZ Emergency Travel Document, <br />
- NZPV NZ Permanent Resident Visa (A New Zealand Permanent Resident Visa (not time bound) issued by Immigration New Zealand), <br />
- NZTV NZ Resident Visa (A New Zealand Resident Visa (time bound) issued by Immigration New Zealand), <br />
- NZRT NZ Refugee Travel Document, PPRT Passport </td>
<td> BR RQ 1200 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 2500 </td>
<td> Unverified Name Definition</td>
<td> A Unverified Name is a name for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the name; i.e. Source is one of: <br />
- NPRF No Proof Information provided (no proof) by patient/whanau, <br />
- OTHR Other  official document</td>
<td> BR RQ 1200 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 2600 </td>
<td> Partial Name Definition</td>
<td> A Partial Name is a name which: <br />
- contains only one of:{Given Name; Family Name}, AND <br />\
- is not Verified AND <br />
- is not Registered </td>
<td> BR RQ 1200 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> AR NM 2700 </td>
<td> Baby Of Name Source </td>
<td> Baby Of Name must have source of NPRF </td>
<td> BR RQ 1000</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td>DR NM 5000</td>
<td>Mandatory Name Data</td>
<td>A Patient Name Request must include the following information:<br />
- At least one of {Given Name, Family Name}, AND <br />
- Preferred Name Flag</td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> DR NM 5100 </td>
<td> Optional Name Data </td>
<td> A Patient Name request may contain the following information: <br />
Name Identity <br />
- Name Prefix (title), <br />
- Other Given Names, <br />
- Name Suffix, <br />
Name Quality <br />
- Name Qualifier Code, <br />
- Name Source <br />
Name Usage <br />
- Preferred Name Flag, <br />
- Protected flag, <br />
- Date effective from, <br />
- Date effective to </td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td>DR NM 5200</td>
<td>Other Given Names</td>
<td>Patient ‘Other Given Names’ are only allowed if the given name is populated</td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
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
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td>DR NM 5400</td>
<td>Name First Letter</td>
<td> The first character of a Patient First Name, and a Patient Family name must be one of: <br />
- Alphas (A-Z or a-z), <br />
- apostrophes(')</td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td>DR NM 5500</td>
<td>Name Minimum Alpha character</td>
<td>A name field which is not null must contain at least one alphabetic character</td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td>DR NM 5600</td>
<td> Effective To Date </td>
<td> A Patient Name Effective To Date must be greater than or equal to: <br />
- the Patient Name Effective From Date, AND <br />
- the Patient Date of Birth </td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Name</td>
<td> DR NM 5700 </td>
<td> Name Version </td>
<td> A Patient Name Update request must contain a valid, active Patient Name Set ID for the NHI record being updated.(i.e. the Name being updated is a current active name for the NHI ID being updated) </td>
<td> BR RQ 1300 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>
</table>

<h3>NHI Address Rules </h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th>
<th>Parent (Child) rule</th> 
<th>HTTP Error</th>
<th>Error Code</th>
<th>Error message</th>
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
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> BR AD 200</td>
<td> Patient Primary Residential Address </td>
<td> A Patient must have a single Primary Residential Address </td>
<td> </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> BR AD 300</td>
<td> Patient Active Addresses </td>
<td> A Patient may have up to 3 active Addresses </td>
<td> </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1000 </td>
<td> Adding Address Protection </td>
<td> The Address Protection Status for an address must only be set to Yes (Protected) by an authorised user </td>
<td> BR RQ 900 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1100 </td>
<td> Removing Address Protection </td>
<td> Address Protection flag must only be changed from Protected to unprotected by an authorised user </td>
<td> BR RQ 900 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1200 </td>
<td> Validated Primary Residential Address </td>
<td> An validated Primary residential address must be a residential address i.e. Address Type must be 'Residential' i.e. it must be a physical address at which people can reside, Physical = Y, that is it is not a mailing only address. Note that an *unvalidated address* must also be residential.</td>
<td> BR RQ 900 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1300</td>
<td> Primary Address Protection </td>
<td> A Patient Primary Residential Address must not be protected </td>
<td> BR RQ 900 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1400</td>
<td> Unvalidated Primary Residential Address </td>
<td> A Patient Residential Address or Postal Address (alternate or secondary Address) may be Protected </td>
<td> BR RQ 900 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1500</td>
<td> Unvalidated Primary Residential Address </td>
<td> An unvalidated Primary Residential Address must be a residential address </td>
<td> BR RQ 900 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1600</td>
<td> Selected Address Active </td>
<td> Only an active address can be modified. In some cases an address is changed from inactive to active (e.g. an exact match on an existing inactive address for an add address request will result in the inactive address becoming active again)</td>
<td> BR RQ 900, <br />
BR RQ 1000</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1700</td>
<td> Duplicate Validated Address Definition</td>
<td> A validated address is a duplicate address for a given NHI number if all NZ POST address line values match the values for an existing address for that NHI.</td>
<td> BR RQ 500 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1700</td>
<td> Duplicate unvalidated Address Definition </td>
<td> An unvalidated address is a duplicate address for a given NHI number if all key address values match the values for an existing address for that NHI. Key address values: <br />
- Address Type, <br />
- Street Address / Address line 1, <br />
- Additional street address /  Address line 2, <br />
- Suburb / Address line 3, <br />
- Town/City / Address line 4, <br />
- State or Province (Country) /Address Line 5, <br />
- Address line 6 </td>
<td> BR RQ 500 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1800</td>
<td> Duplicate Address Check </td>
<td> An Address update request must not create a duplicate of an existing Address for an NHI number </td>
<td> BR RQ 500 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 1900</td>
<td> Allow dormant NHI address duplication </td>
<td> An active Address for a Patient’s live NHI number may be a duplicate of an Address for a linked dormant NHI number </td>
<td> BR RQ 500 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 2000</td>
<td> Validated Residential Address must be Physical </td>
<td> An Address which is validated by eSAM, and has a type ‘residential’, must be a Physical Address (i.e. is Physical = Y)</td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 2100</td>
<td> Validated Mailing Address must be Deliverable </td>
<td> An Address which is validated by eSAM, and has a type ‘mailing’, must be a deliverable Address (i.e. ‘Deliverable’ = Y)</td>
<td> BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
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
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> AR AD 2300</td>
<td> Address Type cannot change</td>
<td> "An address type (residential or mailing) for an address cannot be modified. (i.e. to change type the address must be added with the required type)" </td>
<td> </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

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
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> DR AD 5200 </td>
<td> Address Version </td>
<td> A Patient Address Update request must contain a valid, active Patient Address Set ID for the NHI record being updated.</td>
<td> BR RQ 900, <br ?>
BR RQ 1000 </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Address</td>
<td> DR AD 5300 </td>
<td> Validated Address Match </td>
<td> The result of an address service 'find address' request using the values provided for the first four lines of the Address Location must: <br />
- result in a single validated address with a match score exceeding the match threshold, AND <br />
- have a unique Address ID matching the unique ID provided in the request</td>
<td> </td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
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
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
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
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>
</table>

<h3>NHI Core Birth and Death Rules </h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th>
<th>Parent (Child) rule</th> 
<th>HTTP Error</th>
<th>Error Code</th>
<th>Error message</th>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>BR BD 100</td>
<td>Date of Birth</td>
<td>A Patient must have a date of birth, which must be:<br />
- After 1 January 1800, AND<br />
- Not a future date</td>
<td>AR BD 1100</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
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
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>BR BD 300</td>
<td>Place and Country of Birth</td>
<td>A Patient may have:<br />
- A Place of Birth,<br />
- A Country of Birth</td>
<td>AR BD 1100</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1000</td>
<td>Registered DOB Status Definition</td>
<td>A Registered Date of Birth is a date of birth which has been verified by a Government Agency 
(e.g. for Master Codeset 2.0, this would be a.  DOB which has a source of BREG, i.e. has been confirmed with a match to the Birth Register)</td>
<td>AR BD 1100</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
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
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1200</td>
<td>Unverified DOB Status Definition</td>
<td>A Unverified Date of Birth is a date of birth for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the name e.g. for Master Codeset 2.0, this would be a. source is one of: <br />
- NPRF No Proof Information provided (no proof) by patient/whanau, <br />
- OTHR Other official document</td>
<td></td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1300</td>
<td>Registered DOD Status Definition</td>
<td>A Registered Date of Death is a date of death which has been verified by a Government Agency e.g. for Master Codeset 2.0, this would be a DOD which has a source of DREG, i.e. has been confirmed with a match to the Death Register</td>
<td></td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1400</td>
<td>Provisional DOD status Definition</td>
<td>A Provisional Date of Death is an unverified date of death for a death taking place in New Zealand. e.g. for Master Codeset 2.0, this would be a DOD which has a source of PROV, i.e. has been recorded, and not yet registered</td>
<td></td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1500</td>
<td>Unverifiable DOD status Definition</td>
<td>An unverifiable Date of Death is a date of death for a death taking place outside New Zealand, which will not appear on the death register. e.g. for Master Codeset 2.0, this would be a. DOD which has a source of OSEA, i.e. has been notified by a third party</td>
<td></td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1600</td>
<td>Registered COB Definition</td>
<td>A Registered Country of Birth is either a place and country of birth, or a country of birth only, which has been verified by a Government Agency e.g. for Master Codeset 2.0, this would be a COB which has a source of BREG, i.e. has been confirmed with a match to the Birth Register</td>
<td></td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
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
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1800</td>
<td>Unverified COB Definition</td>
<td>A Unverified Country of Birth is either a place and country of birth, or a country of birth only, for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the birthplace</td>
<td></td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 1900</td>
<td>Birth Information Source Update</td>
<td>A request to populate the Date of Birth Information Source must also populate the Date of Birth</td>
<td>BR RQ 800</td>
<td>HTTP Error</td>
<td>Error Code</td>
<td>Error Message </td>
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
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>AR BD 2300</td>
<td>Modify Registered Birth Death Value</td>
<td>An update request must not modify or delete any birth and death information with a Status of Registered, i.e. Registered Date of Birth, Registered Date of Death, Registered Country of Birth</td>
<td>BR RQ 700</td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr>
<td>Core - Birth and Death</td>
<td>AR BD 2400</td>
<td>Modify Verified Birth Death Value</td>
<td>An update request must not modify or delete any birth and death information with a Status of Verified, i.e. Verified DOB, Verified COB</td>
<td>BR RQ 900</td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>DR BD 5000</td>
<td>Partial DOB Definition</td>
<td>When assessing data against rules, a partial date of birth will be interpreted as follows: <br />
YYYYMM - the first day of the specified month in the year of birth (e.g  July 2010 is interpreted as 1 July 2010); <br />
YYYY - 1 January in the specified year of Birth (e.g. 2010 is interpreted as 1 January 2010)</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>DR BD 5100</td>
<td>Partial DOD Definition</td>
<td>When assessing data against rules, a partial date of death will be interpreted as follows: <br />
YYYYMM - the last day of the specified month in the year of death (e.g. July 2010 is interpreted as 31 July 2010); <br />
YYYY - 31 December in the specified year of death (e.g. 2010 is interpreted as 31 December 2010)</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>DR BD 5200</td>
<td>DOB real</td>
<td>The Date of Birth must be a date which is less than or equal to today’s date expressed in the same date format as the submitted date. i.e. if the date of birth format is: <br />
YYYYMMDD - DOB less than or equal to the current date; <br >
YYYYMM – less than or equal to the current month and year; <br />
YYYY – less than or equal to the current year</td>
<td> BR BD 100 </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>DR BD 5300</td>
<td>DOD real</td>
<td>The Date of Death must be a date which is less than or equal to today’s date expressed in the same date format as the submitted date. i.e. if the date of death format is: <br />
YYYYMMDD - DOD less than or equal to the current date; <br />
YYYYMM – less than or equal to the current month and year; <br />
YYYY – less than or equal to the current year</td>
<td> BR BD 200 </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - Birth and Death</td>
<td>DR BD 5400</td>
<td>DOD on or after DOB</td>
<td>The Date of Birth must be less than or equal to the Date of Death</td>
<td>BR BD 200</td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr>
<td>Core - Birth and Death</td>
<td>DR BD 5500</td>
<td>Place of Birth</td>
<td>A place of birth must only be populated if a country of birth is populated</td>
<td>BR BD 300</td>
<td> </td>
<td> </td>
<td> </td>
</tr>
</table>

<h3>NHI Core Gender Rules </h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th>
<th>Parent (Child) rule</th> 
<th>HTTP Error</th>
<th>Error Code</th>
<th>Error message</th>
</tr>

<tr>
<td>Core - Gender</td>
<td>BR GD 100</td>
<td>Gender</td>
<td>A Patient must have a current gender</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>
</table>

<h3>NHI Core Ethnicity Rules </h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th>
<th>Parent (Child) rule</th> 
<th>HTTP Error</th>
<th>Error Code</th>
<th>Error message</th>
</tr>

<tr>
<td>Core - Ethnicity</td>
<td>BR ET 100</td>
<td>Ethnicity</td>
<td>A Patient must have one active set of ethnicity information</td>
<td></td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - Ethnicity</td>
<td>BR ET 200</td>
<td>Replace ethnicity on update</td>
<td>A Patient must supply all ethnicities identified with when supplying ethnicity information</td>
<td></td>
<td> </td>
<td> </td>
<td> </td>
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
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - Ethnicity</td>
<td>AR ET 1100</td>
<td>Update Ethnicity</td>
<td>A Patient Core identity update to Ethnicity must have an acceptable set of ethnicity information</td>
<td>BR ET 100</td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - Ethnicity</td>
<td>AR ET 1200</td>
<td>Complete Ethnicity</td>
<td>A Patient Core identity update to Ethnicity must replace the existing set of ethnicity information</td>
<td>BR ET 200</td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - Ethnicity</td>
<td>DR ET 5000</td>
<td>Valid residual codes</td>
<td>n ethnicity update may contain a maximum of one residual (9xxxx) ethnicity code, and must: <br />
- contain only one 9xxxx code (i.e. a residual code must not be applied in conjuction with any other code), AND <br />
- not contain unused code 96666 (repeated value); AND <br />
- not contain unused code 98888 (response out of scope) </td>
<td>AR ET 1000</td>
<td> </td>
<td> </td>
<td> </td>
</tr>
</table>

<h3>NHI Core NZ Citizenship Rules </h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Rule Type</th>
<th>Rule ID </th>
<th>Title</th>
<th>Rule description</th>
<th>Parent (Child) rule</th> 
<th>HTTP Error</th>
<th>Error Code</th>
<th>Error message</th>
</tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>BR NZ 100</td>
<td>NZ Citizenship</td>
<td>A Patient may have an NZ Citizenship status</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>AR NZ 1000</td>
<td> Registered NZ Citizenship Status Definition </td>
<td>A Registered NZ Citizenship status is a patient who holds NZ Citizenship and the citizenship status has been verified by a Government Agency </td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>AR NZ 1100</td>
<td> Verified NZ Citizenship Status Definition </td>
<td>A Verified NZ Citizenship Status is a patient who holds NZ Citizenship for which acceptable documentary evidence has been sighted by the person recording the NZ Citizenship status</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>AR NZ 1200</td>
<td> Unverified NZ Citizenship Status Definition </td>
<td>A Unverified NZ Citizenship status is a patient who states they hold NZ Citizenship, for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the NZ Citizenship status</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>AR NZ 1300</td>
<td> Derived NZ Citizenship status Definition </td>
<td>A Derived NZ Citizenship Status is a patient who was born in New Zealand prior to 1 January 2006.</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>AR NZ 1400</td>
<td> Non Citizen NZ Citizenship status Definition </td>
<td>A Non Citizen NZ Citizenship status is a patient who states they do not hold NZ citizenship, with or without documentary evidence.</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>AR NZ 1500</td>
<td> Unknown NZ Citizenship Status Definition </td>
<td>An Unknown NZ Citizenship status is a patient who is unable or unwilling to provide any information about their NZ Citizenship status</td>
<td> </td>
<td> </td>
<td> </td>
<td> </td>
</tr>

<tr>
<td>Core - NZ Citizenship</td>
<td>AR NZ 1600</td>
<td>NZ Citizenship Information Source Update</td>
<td>A request to populate the NZ Citizenship Information Source must also populate the NZ Citizenship status value</td>
<td>BR RQ 700</td>
<td> </td>
<td> </td>
<td> </td>
</tr>
<tr>
<td>Core - NZ Citizenship</td>
<td>AR NZ 1700</td>
<td>Modify Verified NZ Citizenship Value</td>
<td>An update request must not modify or delete NZ Citizenship information with a Status of Verified, i.e. Verified NZ Citizenship Status</td>
<td>BR RQ 900</td>
<td> </td>
<td> </td>
<td> </td>
</tr>
</table>
