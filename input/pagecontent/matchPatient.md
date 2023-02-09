

### Match Patient Overview

* The match patient operation allows a user to search and locate a Patient record with known Patient demographics.


<div>
{% include match-patient.svg %}
</div>

**Match Patient processing steps:**
 
1. The user supplies patient details to be be matched against the NHI patient records
2. The integrating application sends an HTTP Post request using a $match operation to the NHI with 'In parameter' onlyCertainMatches set to False E.g. Post\<Endpoint>/Patient/$match
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The matching patients are retrieved from the NHI.
5. The response containing a bundle of matching patient resources is returned to the integrating application - ALT: Empty bundle returned
6. The integrating application displays the matching patients to the user.

<h3>In Parameters</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Parameter name </th>
<th> Mandatory / Optional </th>
<th> Description </th></tr>

<tr><td> 'Patient resource' </td>
<td> Mandatory </td>
<td> See match request example (link below) </td></tr>

<tr><td> onlyCertainMatches: 0 (False) </td>
<td> Mandatory </td>
<td> Must be set to false </td></tr>
</table>
 

* Behaviour:
  * The NHI does a search using supplied Patient demographics
  * A bundle of patient records that represent possible matches is returned
  * Each record will have a match score from 40 (least likely) - 140 (most likely)
    * Scores below 40 are not returned.
  * The highest scoring records are returned first in the bundle

**Privcy requirements**
* Te Whatu Ora does not require a Get to be done after a match request
* Te Whatu Ora will log details of each NHI returned by a match operation so that any privacy requests from people wanting to know which organisations and users have retrieved their NHI record, can be responded to
* Integrating systems should also ensure they have sufficient logging in place to respond to similar requests

* For an example Match request body [click here](/artifacts.html#example-example-instances)

#### Match Patient Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Match Patient rules**
  * A Match patient request must include:
    * name (Either family or given) 
    * birthdate (this can be a partial birthdate i.e. year only)
 
  * Minimum details to be presented by the integrator in the user interface to allow for adequate confirmation of identity (if present on the patient record):
    * preferred name (given name, other given names and family name).
    * birthdate
    * gender
    * nhi-id (live)
    * address (primary residential)
    * match score

  * Other details to consider presenting:
    *  birth-place (Place and Country of birth)
    *  other names a person has
    *  nhi-id (dormant/s)

* _Match Patient errors_
  * _Patient name is a required field_
  * _Patient birthdate is a required field_
