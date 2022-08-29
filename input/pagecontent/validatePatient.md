

### Validate Patient Overview

* The local system sends a validate request to the NHI with and nhi-id and patient details
  * if a 'dormant’ nhi-id is used, the response will include the 'live' nhi-id
* In Parameters:
  * Patient resource
  * onlyCertainMatches: 1 (True)
* The NHI does validtaes the nhi-id and provided details against patient records held on the NHI
* The NHI returns a bundle with an nhi-id if a validation has been successful
* The bundle will also include:
  * A search score most likely (1) to least likely (0)
  * A "match-grade":
    * Certain Match
    * Possible Match (Further details are required)
    * Certainly Not a Match

<div>
{% include validate-patient.svg %}
</div>

Validate Patient processing steps:

1. The user initiates a validate request in the integrating application
2. The integrating application sends an HTTP POST request using a $Match operation to the NHI with onlyCertainMatches set to True
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The NHI validates whether the Patient details and nhi-id provided are a certain match
5. If there is a certain match the NHI FHIR API returns a Bundle containing only the Patient record with the nhi-id showing. Alt: Empty Bundle returned with OperationOutcome resource returned.
6. The integrating application displays the results of the validate to the user.

### Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Validate Patient rules**
  * A Validate patient request must include:
    * A nhi-id
    * name
    * birthdate

* _1a. Validate Patient errors_
  * _onlyCertainMatches is only currently supported when sending an NHI identifier (Not an ID)_
  * _Patient name is a required field_
  * _Patient birthdate is a required field_
