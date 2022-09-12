

### Get Patient

#### Overview

The local system sends a request to the NHI with a patient NHI number (nhi-id) <br /> The NHI locates the nhi-id and returns either the current patient data for the nhi-id (where nhi-id is live) or the current patient data for the linked live nhi-id (where the nhi-id is dormant).

<div>
{% include get-patient.svg %}
</div>


#### **NHI FHIR GET Patient processing steps:**
 
1. The user supplies an nhi-id for a patient to be looked up.
2. The integrating application sends an HTTP GET request for the Patient resource using the nhi-id to identify the patient whose information is being requested. E.g. GET<Endpoint>/Patient/ZZZ0008
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Patient resource is retrieved from the NHI - ALT: Patient resource not found. Operation Outcome resource returned<br />
5. The response containing the Patient resource is returned - ALT: Where an nhi-id is dormant, a response containing the patient details for the live nhi-id is returned

#### Get Patient Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Get Patient rules**
  * A Patient read request must include a valid nhi-id

* _1a. Get Patient errors_
  * _"Invalid nhi-id" (HTTP 404 Not found, Error, Processing)_
