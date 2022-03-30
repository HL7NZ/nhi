

### About

New Zealand has long benefited from the nation-wide system that assigns a unique identifier to each health care recipient - known as the National Health Index (NHI).  The NHI system stores these identifiers alongside key attributes that are needed to establish a person’s identity (e.g. Name, Date of Birth, Gender, Address).

Since 1979 NHI numbers have been allocated to patients as they enter the public hospital system and to all newborn babies. General Practices have allocated NHI numbers to their patient records since the early 2000’s and full integration around 2016 has enabled general practices to maintain the NHI details and issue NHI numbers to new patients in real-time. It is estimated some 98% of New Zealanders have an NHI number and approximately 150,000 new NHI numbers are issued each year.

The NHI ensures each person is accurately identified whenever they receive health care so that information relevant to their health care needs can be accessed. Being able to accurately identify patients and the information relating to them is crucial to good treatment decision-making by individual clinicians. The NHI ensures test results, prior clinical assessments, immunisation history and, medications etc are stored in the right patient file, and that any key medical warnings can be readily accessed in an emergency. The NHI also protects patient safety by ensuring the information clinicians obtain and act on relates to the right person and is as complete and up-to-date as possible. The NHI is the Ministry’s most widely used system and a cornerstone for the effective and efficient operation of the New Zealand Health and Disability sector. The NHI plays a key strategic role in the ongoing digitisation of healthcare and is essential to the success of interoperability initiatives such as the National Health Information Platform (HIRA).

For more information click [here](https://www.health.govt.nz/our-work/health-identity/national-health-index/national-health-index-overview).




#### What the NHI Contains

The NHI holds the following information:

* name (including alternative names such as maiden names)
* NHI number
* address
* date of birth
* gender
* New Zealand resident and citizenship status 
* place of birth
* ethnicity
* date of death (if appropriate)




#### NHI Number format

**NHI numbers have one of 2 formats**
* AAANNNC (3 alpha, 3 numeric and one numeric check digit).
* AAANNAX (3 alpha, 2 numeric, 1 alpha and one alpha check digit). This format will be first issued circa 2025. 

For more information click [here](https://www.health.govt.nz/our-work/health-identity/national-health-index/upcoming-changes-nhi-numbers).



#### Context

To maximise the benefits of the NHI all healthcare providers should;

* locate and confirm the patient identity, 
* synchronise data held locally with the NHI, and 
* update any new information provided

each time a patient presents for healthcare. 



#### Access

Health providers listed in [Schedule 2 of the Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/) are allowed to access the information in the NHI. This includes the Accident Compensation Corporation (ACC), District Health Board’s (DHBs), hospitals, laboratories, pharmacies, afterhours clinics, specialist clinics, MedicAlert, all primary care providers, and any health agency which has a contract with the ACC, a DHB or the Ministry of Health to provide health or disability services.

All authorised providers must comply with the provisions of the Privacy Act and Health Information Privacy Code when accessing and updating information in the NHI.
The Ministry assigns appropriate permissions, and monitors and audits the actions of health provider use of the NHI. 

The Ministry assigns appropriate permissions, and monitors and audits the actions of health provider use of the NHI. 

All users of the NHI are subject to the Privacy Act 1993 and the Health Information Privacy Code 2020. Privacy impact assessments and security assessments should be completed prior to applying for access to the NHI.

A terms of use agreement with user organisations will be signed before access is granted to production services
For more information see - On-boarding and Compliance IG link...




#### Design Principles

Vendors implementing NHI web services should be familiar with the following design principles.

1. **All patient records will have an NHI number**
  * All clinical and administrative health records for a patient will have an NHI number.
2. **NHI is the master source of patient identity data**
  * The NHI is the master source of identity data for a patient. Health Provider systems will use the NHI as the source of a patient’s identity information and to confirm a patient’s NHI number.
  * When providers become aware that a patient’s identity information has changed, the patient’s NHI identity record must be updated. Providers will ensure the identity information in their local systems match the NHI.
3. **All NHI users have a stewardship responsibility**
  * NHI data integrity is dependent on the community of health providers. All users of the NHI will ensure the patient identity information held in the NHI is current and accurate.
  * The Ministry ensures the NHI complies with identity standards and resolves identity conflicts where they are discovered. Every other user has an individual stewardship responsibility to ensure data is current and accurate at all times.
4. **A patient may have more than one NHI number** 
  * A patient may have been assigned more than one NHI number. One of the NHI numbers will be LIVE, any other NHI numbers will be DORMANT. All systems managing patient records will be able to support linking and unlinking NHI identifiers.
  * Systems will be able to provide a single view of a patient’s health information even when a patient has more than one NHI number.
5. **Provider systems integrate web services to support identity functions**
  * Health Provider systems will integrate Patient Identity web services to accurately establish, confirm, and maintain patient identity at every point of care. 
  * Use of the system for identity functions will be supported by agreed, consistent business processes for users.




#### Expectations and Requirements

The Ministry expects:
* The implementation will meet the relevant compliance requirements
* The user interface will encourage and support user compliance with standard business processes
* The user interface will support users in the appropriate and accurate use and management of patient identity data 
* An implementation that will make efficient use of the web services and ensure unnecessary load is not created on the Ministry systems 
* A performant implementation that improves the capability of end users to perform identity  

These expectations will be measured with a set of compliance requirements, agreed between the integrator and the Ministry.




#### Linking - Live and Dormant Identifiers

A person may have been registered on the NHI more than once and therefore have been assigned more than one NHI number. When this is discovered the records are ‘linked’. Linking means that two or more NHI numbers will always be associated with a single person. One NHI number is nominated as the LIVE number. The other numbers are referred to as DORMANT. Usually, the earliest issued NHI number is designated as the live number. All relevant information from both records is retained e.g., all names. After linking, a request using either the live or a dormant NHI number will return the same response.




#### Case

Information in the NHI is collected in mixed case and preserved in the format provided by the source.




#### Māori macrons

Updates to the NHI using the FHIR interfaces allows information supplied to the NHI to include UTF-8 encoded Maori accented characters.
