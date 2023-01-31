

### Patient resource use cases


#### A new Patient presents for healthcare.

A new patient presents for healthcare e.g. A casual patient books an appointment with GP, a new patient seeks to enrol at a GP, a patient presents at an Accident and Emergency department or afterhours clinic, a referral is received for a patient from a health provider. <br />
This is a new patient not yet registered in the hospital or providers system.

* Steps involved:
  1. User searches the local system for patient.
  2. User Adds the patient to the local system.
  3. Local system searches the NHI for the patient [(Match Patient.](/matchPatient.html)
  4. User selects a record from the search results OR patient is not found in NHI and user adds new record to NHI [Add Patient.](/addPatient.html)
  5. User compares the local and NHI details, confirms with the patient and makes corrections where appropriate using _Update core_, [Update name](/updateName.html) or [Update address.](/updateAddress.html)
  6. System assigns NHI number and version to local record.


#### A returning patient presents for healthcare.

An existing patient known to the hospital or GP practice presents for healthcare e.g. Enrolled patient books or attends an appointment, a patient presents for an outpatient appointment, a patient presents for planned admission. <br />
The patient details are already in the local system and an NHI number and version have previously been assigned.

* Steps involved:
  1. User finds the patient record in local system.
  2. Local system looks up NHI to check if NHI version has changed [Get Patient.](/getPatient.html)
  3. If NHI version has changed but the local attributes are still in line wth the NHI (the data of interest hasn't changed) update the local version only.
    * Note: The version will change if Te Whatu Ora has linked two NHI records when duplicates have been discovered. The local system should use the live and the list of dormant NHI's to determine if any local records need to be merged. If the local system has their patient under a now dormant NHI number, the local NHI number should be changed to the live NHI number.
  4. If an NHI patient attribute has changed or the local patient details have been updated, the user compares the local and NHI details and makes corrections where appropriate using _Update core_, [Update name](/updateName.html) or [Update address.](/updateAddress.html)


#### A notification is received that patient details have changed.

Information is received by the hospital or provider that patient information has changed. This may be a Notification from National enrolment service that the patient has died, the patient may contact the hospital or provider to provide a new address (Future notification service).

* Steps involved:
  1. Receive a notification of patient record change e.g. Death of patient.
  2. Find patient in the local system.
  3. Get the patient’s details from the NHI [Get Patient.](/getPatient.html)
  4. Compare local with NHI and update as required using _Update core_, [Update name](/updateName.html) or [Update address.](/updateAddress.html)


#### A provider notices a discrepancy between local and NHI record, but does not have update access.

* Steps involved:
  1. Find patient in local system.
  2. Read the patients file from the NHI [Get Patient.](/getPatient.html)
  3. Confirm the record belongs on the patient.
  4. Notice discrepancy between local and NHI record.
  5. Ring or email Te Whatu Ora contact centre so discrepancy can be updated.


#### A user needs to Validate an NHI number.

I don't have access rights to view the NHI details. I want to validate the NHI number and the demographic details I have match the NHI patient details.

* Steps involved:
  1. Find patient in local system.
  2. Validate Patient NHI number and Patient details [Validate Patient.](/validatePatient.html)
  3. Result will be a Certain Match / Possible Match / Certainly Not a Match


#### Look up the enrolled General Practice for a Patient

* This use case requires permission to access a Patients NES enrollment information

* Steps involved:
  1. User finds the patient record in local system.
  2. Local system looks up NHI [Get Patient.](/getPatient.html)
  3. If the user has the correct permissions the details for the General Practice that the Patient is enrolled with will be returned as a contained resource.
  4. For additional information the user could search the HPI using the hpi-facility-id, hpi-organisation-id or the hpi-person-id. See example (Ref below TBC) for how this would work for to lookup EDI for an enrolled patient’s General Practice
  5. Note: 
    * The version number for the Patient record does not change when the General Practitioner details change (See NHI Profile for more information)
    * To update the General Practitioner details the user will need to access the SOAP Enrolment web services

#### Look up Preferred contact details for a Patient

* This use case requires permission to access the Patient Preferences information

* Steps involved:
  1. User finds the patient record in local system.
  2. Local system looks up NHI [Get Patient.](/getPatient.html)
  3. If the user has the correct permissions the Patient Preferences details will be returned in the Patient resource.
  4. Note:
    * The version number for the Patient record does not change when the Patients Preferences details change (See NHI Profile for more information)
    * To update the Patient Preferences the user will need to access the SOAP Patient Preference web services


### Multi-resource use cases


#### Lookup EDI for an enrolled patient’s General Practice

* This use case requires permission to access NES enrollment and HPI facility information

<div>
{% include lookup-edi-number.svg %}
</div>

* Steps involved:
  1.	The user initiates searching for an EDI number for a patient’s General Practitioner
  2.	The integrating application sends a read request for the Patient Resource using the nhi-id to the NHI FHIR API E.g. GET\<Endpoint>/Patient/ZZZ0008
  3.	The requested is validated - ALT: Validation failure. OperationOutcome resource returned
  4.	The Patient resource (containing the Patients enrolled General Practice details) is returned from the HPI
  5.	The integrating application sends a read request for the Facility details (Location resource) using the hpi-facility-id to the HPI FHIR API E.g. GET\<Endpoint>/Location/F99999B
  6.	The requested is validated - ALT: Validation failure. OperationOutcome resource returned
  7.	The Location resource is returned from the HPI
  8.	The integrating application extracts the messaging address containing the EDI number for the GP clinic
