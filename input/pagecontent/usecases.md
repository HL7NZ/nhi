

### Use Cases

#### Scenario 1: New Patient

1. Patient details are not in the local system.
2. Practitioner needs to look up NHI details.

* Steps involved:
   1.	Search the local system for patient.
   2.	Add the patient to the local system.
   3.	Search the NHI for the patient (NHI FHIR interaction SEARCH) **TBD** 
   4.	Confirm the record belongs to the patient.
   5.	Read the NHI (NHI FHIR interaction GET).
   6.	View the local and NHI patient record to identify whether the record is accurate and current.
   7.	Make changes as required see below*


#### Scenario 2: Returning patient

1. Patient details are in the local system.
2. Practitioner needs to look up the NHI to compare patient details

* Steps involved:
   1. Find patient in local system.
   2. Read the patients file from the NHI (NHI FHIR interaction GET).
   3.	Confirm the record belongs on the patient.
   4.	View the local and NHI patient record  to identify whether the record is accurate and current.
   5.	Make changes as required see below*


### FHIR Interactions

#### Overview 
|System FHIR interaction|Description|
|---|---|
|GET|The local system sends a request to the NHI with a patient NHI ID <br /> The NHI locates the NHI ID and returns either the current patient data for the NHI ID (where NHI ID is live) or the current patient data for the linked Live NHI ID (where the NHI ID is dormant)|
|SEARCH|TBC|


#### NHI FHIR interaction GET

The Patient ‘Get’ interaction is initiated by a local system request for the patient record data held in the NHI for a specified NHI ID. This may follow a NHI FHIR SEARCH interaction  where the user has selected a search result and wishes to view full NHI details to confirm the identity, or may follow a local system patient enquiry.

**Details**
|Actors|**User**: Local System <br /> **System**: National Health Index (NHI)|
|Precondition(s)|Local System has created ‘NHI FHIR GET request
|Trigger(s)|Local System sends ‘NHI FHIR GET request to the NHI|
|Post condition|NHI has sent ‘NHI FHIR GET Response to Local System|

##### ddfsfse 
<img style="width:900px; float:none" src="NHI FHIR GET.png"/>

**NHI FHIR GET processing steps:**
1. The user supplies an NHI number for a patient to be looked up.
2. The integrating application sends an HTTP GET request for the Patient resource using the NHI number to identify the patient whose information is being requested. E.g. GET https://nhi.api.health.govt.nz/patient/ZAT2364
3. The request is validated - ALT: Validation failure. Interaction Outcome resource returned
4. The Patient details are retrieved from the NHI - ALT: NHI number not found. Interaction Outcome resource returned
5. The response containing the Patient details is returned. ALT: Where an NHI is dormant, a response containing the patient details for the live NHI is returned.


**NHI FHIR SEARCH processing steps:**
* TBC
