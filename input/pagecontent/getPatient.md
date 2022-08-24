

### Get Patient

#### Overview

The local system sends a request to the NHI with a patient NHI number (nhi-id) <br /> The NHI locates the nhi-id and returns either the current patient data for the nhi-id(where nhi-id is live) or the current patient data for the linked Live nhi-id (where the nhi-id is dormant).

<img style="width:900px; float:none" src="NHI FHIR GET.png"/>


#### **NHI FHIR GET Patient processing steps:**
 
1. The user supplies an nhi-id for a patient to be looked up.<br />

2. The integrating application sends an HTTP GET request for the Patient resource using the nhi-id to identify the patient whose information is being requested. E.g. GET https://nhi.api.health.govt.nz/patient/ZAT2364<br />

3. The request is either:<br />
 * Validated (Step 4).<br />
 * ALT: Validation failure. Operation Outcome resource returned<br />
 
4. The Patient details are either:<br />
 * Retrieved from the NHI (Step 5)<br />
 * ALT: nhi-id not found. Operation Outcome resource returned<br />
 
5. The response either:<br />
 * Contains the Patient details and is returned<br />
 * ALT: Where an nhi-id is dormant, a response containing the patient details for the live nhi-id is returned

#### Get Patient Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

1. **Get Patient rules**

 * 
      _1a. Get Patient errors_

      * 
