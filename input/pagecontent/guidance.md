

#### Scenario 1: New Patient presents for healthcare

A new patient presents for healthcare e.g. A casual patient books an appointment with GP, a new patient seeks to enrol at a GP, a patient presents at an Accident and Emergency department or afterhours clinic, a referral is received for a patient from a health provider. <br />
This is a new patient not yet registered in the hospital or providers system.

  * Steps involved:
     1. User searches the local system for patient.
     2. User Adds the patient to the local system.
     3. Local system searches the NHI for the patient **($Match Patient - with onlyCertainMatches flag set to false).**
     4. User selects a record from the search results OR patient is not found in NHI and user adds new record to NHI **(Add Patient).**
     5. User compares the local and NHI details, confirms with the patient and makes corrections where appropriate **(Update Patient).**
     6. System assigns NHI number and version to local record.


#### Scenario 2: Returning patient

An existing patient known to the hospital or GP practice presents for healthcare e.g. Enrolled patient books or attends an appointment, a patient presents for an outpatient appointment, a patient presents for planned admission. <br />
The patient details are already in the local system and an NHI number and version have previously been assigned.

  * Steps involved:
     1. User finds the patient record in local system.
     2. Local system looks up NHI to check if NHI version has changed **(Get Patient).**
     3. If NHI version has changed but the local attributes are still in line wth the NHI (the data of interest hasn't changed) update the local version only.
      * Note: The version will change if Te Whatu Ora has linked two NHI records when duplicates have been discovered. The local system should use the live and the list of dormant NHI's to determine if any local records need to be merged. If the local system has their patient under a now dormant NHI number, the local NHI number should be changed to the live NHI number.
     5. If an NHI patient attribute has changed or the local patient details have been updated user compares the local and NHI details and makes corrections where appropriate **(Update Patient).**


#### Scenario 3: Receive notification that patient details have changed.

Information is received by the hospital or provider that patient information has changed. This may be a Notification from National enrolment service that the patient has died, the patient may contact the hospital or provider to provide a new address (Future notification service).

  * Steps involved:
     1. Receive a notification of patient record change e.g. Death of patient.
     2. Find patient in the local system.
     3. Get the patient’s details from the NHI **(Get Patient).**
     4. Compare local with NHI and update as required **(Update Patient).**


#### Scenario 4: Provider notices a discrepancy between local and NHI record, but does not have update access.

  * Steps involved:
     1. Find patient in local system.
     2. Read the patients file from the NHI **(Get Patient).**
     3. Confirm the record belongs on the patient.
     4. Notice discrepancy between local and NHI record.
     5. Ring or email Te Whatu Ora contact centre so discrepancy can be updated.

#### Scenario 5: Validate NHI number.

I don't have access rights to view the NHI details. I want to validate the NHI number and the demographic details I have match the NHI patient details.

  * Steps involved:
     1. Find patient in local system.
     2. Validate Patient NHI number and Patient details **($Match Patient - with onlyCertainMatches flag set to true)**.
     3. Result will be a Certain Match / Possible Match / Certainly Not a Match
