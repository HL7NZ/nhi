

### Can I use a FHIR search for a patient in the NHI?

No, the NHI FHIR service currently supports $match but not Patient search.

The purpose of using $Match versus a regular search is that $Match is intended to target and find a specific single patient for recording information about, reducing errors through incorrectly selecting the wrong patient. This aligns better with the NHI probabilistic search algorithm. The $Match operation won't return any data if there is insufficient search parameter data, such as a partial surname. This compares to a regular search which can be used for finding lists of patients, such as to locate a group of patients that share an attribute.

The [NHI $match operation](/matchPatient.html) processes a parameters resource containing a complete or fragment of a patient resource, along with some other control parameters. This means that an application cannot search the NHI using the Patient Search Parameters.



### Can I use age range instead of date of birth when searching for a patient?
The standard FHIR $Match on patient does not allow an age range parameter. A year and month or year only can be used if the exact birthdate is not known
An extension to allow an age-range parameter is being considered. (Please reach out to the team)[] if this is something that would benefit you.



### Is building name part of the eSAM address details?
No, eSAM addresses do not include any details about apartment names or retirement village names.  Building name is entered by a user and provided to the NHI in addition to the eSAM address ID.



### How do I retrieve the patient’s general practice EDI address?

[Guidance here](/guidance.html#lookup-edi-for-an-enrolled-patients-general-practice)



### Why doesn’t the Patient version change when the enrolled general practice or telecom contacts change for a patient?

The enrolled general practice and contact details are not held in the NHI but are retrieved from the National Enrolment Service and returned along with the NHI details in the NHI Patient profile. The Patient Version-id only reflects when details held on the NHI change.



### Are the ethnicities in NHI listed in a certain order, are they prioritised?

There is no ordering of ethnicities on the NHI – they are returned as supplied to the NHI. 
If a prioritised ethnicity is required on output for analysis/reporting/kpi etc then follow the rules described in the Ethnicity data Protocol section 5.5.2 Prioritised Output   



### What is the information source attribute and why is it used?

The information source attribute is used to provide provenance to the attribute it corresponds to. It is required when a patient record is created or when an update is made. 

The information source attribute is required on the following attributes:
•	NZ citizenship,
•	Birthplace,
•	Birthdate,
•	Deceased date, and
•	Name

Information sources are classified as unverified, verified or registered.

Unverified sources are added when no documentation has been sighted to verify the information. Verified sources are added when a specific document has been sighted to verify the information. Registered sources are only added by Te Whatu Ora when the information has been verified with the official source e.g. Department of Internal Affairs. 

The service will return an error if a request attempts to update:
•	an attribute that has a Registered source or 
•	a verified attribute with an unverified one. 

For more information of the list of information sources see the [glossary definitions](/glossary.html)

The information source is only required to be displayed to an end user if the business requirement is to provide evidence of the quality of information held. 

The information source is not required to be stored in the local system. 



### Does the NHI lock down the NZ Citizenship status?

The NHI provides update access to all users with the correct permissions.

If an attribute is not present it can be added using the update-eligibility operation.

If present then an unverified source can be updated to a verified source, a verified source can then be updated to another verified source (if required) or by an authorised user to a registered source.

Local role based access should limit the updating of NZ Citizenship to users with a good knowledge of the NZ Citizenship determination. 



### Does my system have to update the information source codes for citizenship, birthdate, name, deceased date?

[See above](/FAQ.html#what-is-the-information-source-attribute-and-why-is-it-used)



### What is the NZ Citizenship status attribute?

NZ Citizenship is an attribute that was introduced with the NHI SOAP services in 2016 (It is not available in HL7 legacy). It is mostly populated from a DIA share of historic births since approximately 1930. Where data could be successfully matched to an NHI, the NZ Citizenship status was updated to Yes and the NZ Citizenship status Information Source to DIA. The absence of NZ Citizenship status does not mean a person is not a Citizen, only that we have not received or processed information to update the Citizenship status value.

Providers can update the NZ Citizenship status if there is no data on the NHI for their patient and the source is not DIA.  Evidence of citizenship should be sighted before updating the NHI. Organisations may want to limit update capability of these fields to users who have a good understanding of the eligibility rules.

<h4>NZ Current Citizenship status numbers in the NHI</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Status of the record</th>
<th>Percentage of records</th>
<th>Breakdown of source <br /> for yes reponses</th></tr>

<tr><td>NHIs with no citizenship details</td>
<td>67%</td>
<td></td></tr>

<tr><td>Unknown</td>
<td>6%</td>
<td></td></tr>

<tr><td>No</td>
<td>2%</td>
<td></td></tr>

<tr><td>Yes</td>
<td>25%</td>
<td>BREG 84% <br />
BRCT 7% <br />
NPRF 7%<br />
PPRT 1%<br />
NZCT <1%</td></tr>
</table>


### Where has the New Zealand Resident status attribute gone?

The New Zealand resident status attribute was introduced in the NHI Legacy service to capture permanent resident status:
* 'Y' = Permanent resident (New Zealand citizen or classified as ‘ordinarily resident in New Zealand’)
* 'N' = Temporary (not a New Zealand citizen, does not have New Zealand ‘ordinarily resident’ status)

Organiations with update access had the ability to update the New Zealand resident status for a person, although at a national level the quality of this data was varied.

With the release of the NHI SOAP service the attribute was discontinued, however is still used today by some integrators using the NHI Legacy service.

A new attribute _NZ Residency_ was designed to capture a person with a permanent resident visa. For the NHI, there is currently no data sharing agreement or mechanism to populate this data from an authorised source. We have therefore had to remove this attribute from the NHI Patient profile. There is no current timeframe for when this might be returned.
