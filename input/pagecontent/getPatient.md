

### Get Patient Interaction

#### Overview

The local system sends a request to the NHI with a patient NHI ID <br /> The NHI locates the NHI ID and returns either the current patient data for the NHI ID (where NHI ID is live) or the current patient data for the linked Live NHI ID (where the NHI ID is dormant).

The Patient ‘Get’ interaction is initiated by a local system request for the patient record data held in the NHI for a specified NHI ID. This may follow a NHI FHIR SEARCH interaction  where the user has selected a search result and wishes to view full NHI details to confirm the identity, or may follow a local system patient enquiry.  


<img style="width:900px; float:none" src="NHI FHIR GET.png"/>


#### **NHI FHIR GET processing steps:**
 
1. The user supplies an NHI number for a patient to be looked up.<br />

2. The integrating application sends an HTTP GET request for the Patient resource using the NHI number to identify the patient whose information is being requested. E.g. GET https://nhi.api.health.govt.nz/patient/ZAT2364<br />

3. The request is either:<br />
 * Validated (Step 4).<br />
 * ALT: Validation failure. Operation Outcome resource returned<br />
 
4. The Patient details are either:<br />
 * Retrieved from the NHI (Step 5)<br />
 * ALT: NHI number not found. Operation Outcome resource returned<br />
 
5. The response either:<br />
 * Contains the Patient details and is returned<br />
 * ALT: Where an NHI is dormant, a response containing the patient details for the live NHI is returned

#### Get Patient Rules and errors

[For Request rules and errors click here](/pagecontent/general.md#request-rules-and-errors)

1. **Get Patient rules**

 * 
      _1a. Get Patient errors_

      * 
