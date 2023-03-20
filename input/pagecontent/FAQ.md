


### Is building name part of the eSAM address details?
No, eSAM addresses do not include any details about apartment names or retirement village names.  Building name is entered by a user and provided to the NHI in addition to the eSAM address ID.



### How do I retrieve the patient’s general practice EDI address?

[Guidance here](/guidance.html#lookup-edi-for-an-enrolled-patients-general-practice)



### Why doesn’t the Patient version change when the enrolled general practice or telecom contacts change for a patient

The enrolled general practice and contact details are not held in the NHI but are retrieved from the National Enrolment Service and returned along with the NHI details in the NHI Patient profile. The Patient Version-id only reflects when details held on the NHI change.



### Are the ethnicities in NHI listed in a certain order, are they prioritised?

There is no ordering of ethnicities on the NHI – they are returned as supplied to the NHI. 
If a prioritised ethnicity is required on output for analysis/reporting/kpi etc then follow the rules described in the Ethnicity data Protocol section 5.5.2 Prioritised Output   



### What is the information source attribute and why is it used?

The information source attribute is used to provide provenance to the attribute it corresponds to. It is required when a patient record is created or when an update is made. 

The information source attribute is required on the following attributes:
•	NZ citizenship,
•	NZ residency,
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



### Does the NHI lock down the Citizenship and Residency status?

The NHI provides update access to all users with the correct permissions.

If an attribute is not present it can be added using the update-eligibility operation.

If present then an unverified source can be updated to a verified source, a verified source can then be updated to another verified source (if required) or by an authorised user to a registered source.

Local role based access should limit the updating of eligibility attributes to users with a good knowledge of eligibility determination. 



### Does my system have to update the information source codes for citizenship, birthdate, residency, name, deceased date?

[See above](/FAQ.html#what-is-the-information-source-attribute-and-why-is-it-used)


### What is the NZ Citizenship status attribute?

NZ Citizenship is an attribute that was introduced with the NHI SOAP services (Not used in the HL7 legacy). It is populated from a DIA share of all births since approximately 1930, where data could be successfully matched to an NHI. Where matching occured, the NZ Citizenship status was updated to Yes and the NZ Citizenship status Information Source to DIA. 

Providers can update the NZ Citizenship status if there is no data on the NHI yet, or the source is not DIA. GP PMS systems display this to their users but don’t have update capability implemented.

Organisations may want to limit update capability of these fields to only a team that assesses eligibility. 
