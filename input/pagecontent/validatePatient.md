

### Validate Patient Overview

* The local system sends a validate request to the NHI with an nhi-id and patient details
  * if a 'dormant' nhi-id is used, the response will include the 'live' nhi-id
* In Parameters:
  * Patient resource
  * onlyCertainMatches: 1 (True)
* The NHI validates the nhi-id and provided details against patient records held on the NHI
* The NHI returns a bundle with an nhi-id if a validation has been successful
* The bundle will also include a search score.
* For an example Validate request body [click here](/artifacts.html#example-example-instances)

<div>
{% include validate-patient.svg %}
</div>

**Validate Patient processing steps:**

1. The user initiates a validate request in the integrating application
2. The integrating application sends an HTTP POST request using a $match operation to the NHI with 'In Parameters' (A patient resource and onlyCertainMatches set to True).
E.g. Post\<Endpoint>/Patient/$match
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The NHI validates whether the Patient details and nhi-id provided are a match
5. If there is a certain match the NHI FHIR API returns a Bundle containing only the Patient record with the nhi-id showing. Alt: Empty Bundle returned with OperationOutcome resource returned.
6. The integrating application displays the results of the validate to the user.

<h4>In Parameters</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Parameter name </th>
<th> Parameter type </th>
<th> Mandatory / Optional </th>
<th> Description </th></tr>

<tr><td> 'Patient resource' </td>
<td> Resource </td>
<td> Mandatory </td>
<td> See validate request example (link below) </td></tr>

<tr><td> onlyCertainMatches: 1 (True) </td>
<td> boolean </td>
<td> Mandatory </td>
<td> Must be set to true </td></tr>
</table>


#### Behaviour:

Note: To be more FHIR compliant this will be changed to return:
* A search score most likely (1) to least likely (0)
* A "match-grade": (certain, possible, certainly-not)


#### Example request

For an example Validate request and response [click here](/artifacts.html#example-example-instances)

#### Validate Patient Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Validate Patient rules
* A Validate patient request must include:
  * A valid nhi-id
  * name
  * birthdate


---


* _Validate Patient errors_
  * _NHI number supplied cannot be found_
  * _onlyCertainMatches is only currently supported when sending an NHI identifier (Not an ID)_
  * _Patient name is a required field_
  * _Patient birthdate is a required field_
