

### Use Cases

#### Scenario 1: New Patient

1. Patient details are not in the local system.
2. Practitioner needs to look up NHI details.

  * Steps involved:
     1. Search the local system for patient.
     2. Add the patient to the local system.
     3. Search the NHI for the patient (NHI FHIR interaction SEARCH) **TBD** 
     4. Confirm the record belongs to the patient.
     5. Read the NHI (NHI FHIR interaction GET).
     6. View the local and NHI patient record to identify whether the record is accurate and current.
     7. Make changes as required see below*



#### Scenario 2: Returning patient

1. Patient details are in the local system.
2. Practitioner needs to look up the NHI to compare patient details

  * Steps involved:
     1. Find patient in local system.
     2. Read the patients file from the NHI (NHI FHIR interaction GET).
     3. Confirm the record belongs on the patient.
     4. View the local and NHI patient record  to identify whether the record is accurate and current.
     5. Make changes as required see below*



#### Scenario 3: Update patient record

1. Patient details need to be updated in NHI.
     * Name, address or core details.

  * Steps involved:
     1. Update patient details in the local system.
     2. Update NHI **(NHI FHIR interaction PATCH/PUT TBD**).



#### Scenario 4: Add new patient record

1. Patient not found in NHI, new patient needs to be added to NHI.
 
  * Steps involved:
     1. Search NHI for patient record
     2. Patient not found
     3. Add new patient to NHI **(NHI FHIR interaction CREATE TBD).**



#### Scenario 5: Receive notification from NHI service that a patients record has updated information

1. Practitioner needs to update local system.

  * Steps involved:
     1. Receive a notification of patient record change e.g. death of patient.
     2. Find patient in the local system
     3. Read the patients file from the NHI (NHI FHIR interaction GET).
     4. Confirm the record belongs on the patient.
     5. Make changes as required* Synchronize TBD*



#### Scenario 6: Integrator notices a discrepancy between local system and NHI record, but does not have update access.

1. Practitioner needs to notify Ministry of Health to update NHI.

  * Steps involved:
     1. Find patient in local system.
     2. Read the patients file from the NHI (NHI FHIR interaction GET).
     3. Confirm the record belongs on the patient.
     4. Notice discrepancy between local and NHI record.
     5. Ring or email Ministry of Health contact centre so discrepancy can be updated.


### FHIR Interactions

<h3>Overview</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>System FHIR interaction</th>
<th>Description</th></tr>
<tr>

<td>NHI-GET</td>
<td>The local system sends a request to the NHI with a patient NHI ID <br /> The NHI locates the NHI ID and returns either the current patient data for the NHI ID (where NHI ID is live) or the current patient data for the linked Live NHI ID (where the NHI ID is dormant)</td>
<tr>
  
<td>**NHI-SEARCH TBD**</td>
<td>TBD</td>
<tr>

   
   
#### NHI FHIR interaction GET

The Patient ‘Get’ interaction is initiated by a local system request for the patient record data held in the NHI for a specified NHI ID. This may follow a NHI FHIR SEARCH interaction  where the user has selected a search result and wishes to view full NHI details to confirm the identity, or may follow a local system patient enquiry.

<h3>Details</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>

<td>Actors</td>
<td>**User**: Local System <br /> **System**: National Health Index (NHI)</td>
<tr>
  
<td>Precondition(s)</td>
<td>Local System has created ‘NHI FHIR GET' request</td>
<tr>

<td>Trigger(s)</td>
<td>Local System sends ‘NHI FHIR GET' request to the NHI</td>
<tr>

<td>Post condition</td>
<td>|NHI has sent ‘NHI FHIR GET Response to Local System</td>
<tr>

<img style="width:900px; float:none" src="NHI FHIR GET.png"/>

**NHI FHIR GET processing steps:**
1. The user supplies an NHI number for a patient to be looked up.
2. The integrating application sends an HTTP GET request for the Patient resource using the NHI number to identify the patient whose information is being requested. E.g. GET https://nhi.api.health.govt.nz/patient/ZAT2364
3. The request is either:
  1) Validated (Step 4).
  2) ALT: Validation failure. Interaction Outcome resource returned
4. The Patient details are either:
   1) Retrieved from the NHI (Step 5).
   2) ALT: NHI number not found. Interaction Outcome resource returned
5. The response either:
   1) Contains the Patient details and is returned.
   2) ALT: Where an NHI is dormant, a response containing the patient details for the live NHI is returned.


**NHI FHIR SEARCH processing steps:**
* TBC
