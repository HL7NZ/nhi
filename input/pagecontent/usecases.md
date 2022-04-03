

### Use Cases

#### Scenario 1: New Patient presents for healthcare

A new patient presents for healthcare eg casual patient books an appointment with GP, a new patient seeks to enrol at a GP, a patient presents at an Accident and Emergency department or afterhours clinic, a referral is received for a patient from a health provider. This is a new patient not yet registered in the hospital or providers system.

  * Steps involved:
     1. User searches the local system for patient.
     2. User Adds the patient to the local system.
     3. Local system searches the NHI for the patient **(SEARCH/$Match).**
     4. User selects a record from the search results OR patient is not found in NHI and user adds new record to NHI **(Add Patient).**
     5. User compares the local and NHI details, confirms with the patient and makes corrections where appropriate **(Update Patient).**
     6. System assigns NHI number and version to local record.


#### Scenario 2: Returning patient

An existing patient known to the hospital or GP practice presents for healthcare eg enrolled patient books or attends an appointment, a patient presents for an outpatient appointment, a patient presents for planned admission. The patient details are already in the local system and an NHI number and version have previously been assigned.

  * Steps involved:
     1. User finds the patient record in local system.
     2. Local system looks up NHI to check if NHI version has changed **(Get Patient).**
     3. If NHI version has changed or local patient details have been updated user compares the local and NHI details and makes corrections where appropriate **(Update Patient).**


#### Scenario 3: Receive notification that patient details have changed.

Information is received by the hospital or provider that patient information has changed. This may be a Notification from National enrolment service that the patient has died, the patient may contact the hospital or provider to provide a new address (Future notification service).

  * Steps involved:
     1. Receive a notification of patient record change e.g. death of patient.
     2. Find patient in the local system.
     3. Get the patient’s details from the NHI **(Get Patient).**
     4. Compare local with NHI and update as required **(update NHI).**


#### Scenario 4: Provider notices a discrepancy between local and NHI record, but does not have update access.


  * Steps involved:
     1. Find patient in local system.
     2. Read the patients file from the NHI **(NHI FHIR interaction GET).**
     3. Confirm the record belongs on the patient.
     4. Notice discrepancy between local and NHI record.
     5. Ring or email Ministry of Health contact centre so discrepancy can be updated.


### FHIR Interactions

#### GET Patient

The local system sends a request to the NHI with a patient NHI ID <br /> The NHI locates the NHI ID and returns either the current patient data for the NHI ID (where NHI ID is live) or the current patient data for the linked Live NHI ID (where the NHI ID is dormant).

The Patient ‘Get’ interaction is initiated by a local system request for the patient record data held in the NHI for a specified NHI ID. This may follow a NHI FHIR SEARCH interaction  where the user has selected a search result and wishes to view full NHI details to confirm the identity, or may follow a local system patient enquiry.  


<img style="width:900px; float:none" src="NHI FHIR GET.png"/>


**NHI FHIR GET processing steps:**
 
1. The user supplies an NHI number for a patient to be looked up.<br />

2. The integrating application sends an HTTP GET request for the Patient resource using the NHI number to identify the patient whose information is being requested. E.g. GET https://nhi.api.health.govt.nz/patient/ZAT2364<br />

3. The request is either:<br />
..1) Validated (Step 4).<br />
..2) ALT: Validation failure. Interaction Outcome resource returned<br />
 
4. The Patient details are either:<br />
..1) Retrieved from the NHI (Step 5).<br />
..2) ALT: NHI number not found. Interaction Outcome resource returned<br />
 
5. The response either:<br />
..1) Contains the Patient details and is returned.<br />
..2) ALT: Where an NHI is dormant, a response containing the patient details for the live NHI is returned.
