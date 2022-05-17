

### $Match Patient Interaction

#### Overview

The local system sends a request to the NHI with patient details to match <br />
The NHI does a search and returns a bundle of patient records that represent possible matches. These are ordered from most likely (1) to least likely (0)

{% include match-patient.svg %}

#### **NHI FHIR $match patient processing steps:**
 
1. The user supplies patient details to be be matched against the NHI patient records<br />

2. The integrating application sends an HTTP $match request for the Patient resource using details to identify the patient whose information is being requested. E.g. GET https://nhi.api.health.govt.nz/patient/$match<br />

3. The request is either:<br />
 * Validated (Step 4).<br />
 * ALT: Validation failure. Operation Outcome resource returned<br />
 
4. A bundle of patient resources are returned ordered from most to least likely:<br />
 * ALT: If there are no patient matches, the MPI SHALL return an empty search set with no error


#### Rules and errors

1. **Request rules**
 * Every request must include an http header item UserId that uniquely identifies the individual initiating the request
 * Each user must have an individual UserID
 * When a userID has an HPI CPN format it must be a valid HPI CPN number
 * The OAUTH2 token contains the requesting organisation and application identifiers that are used for auditing

      _1a. Request errors_
      * _The Patient HTTP header UserID is a required field_
      * _The HTTP header UserID CPN format. The CPN is invalid_
      * _The OAUTH2 userId token is missing or invalid_
 
---

2.	**$match Patient ruless**

 * 
      _2a. $match Patient errors_

      * 
