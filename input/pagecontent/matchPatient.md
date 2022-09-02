

### Match Patient Overview

* The local system sends a request to the NHI with patient details to match
* In Parameters:
  * Patient resource
  * onlyCertainMatches: 0 (False)
* The NHI does a search and returns a bundle of patient records that represent possible matches
* Each record will have:
  * A search score most likely (1) to least likely (0)
  * A "match-grade":
    * Certain Match
    * Possible Match
* A match-grade "Certain Match" should always be checked for accuracy when a human is involved in the match request.

<div>
{% include match-patient.svg %}
</div>

Match Patient processing steps:
 
1. The user supplies patient details to be be matched against the NHI patient records
2. The integrating application sends an HTTP Post request using a $Match operation to the NHI with 'In parameter' onlyCertainMatches set to False E.g.Post\{{Endpoint}}/Patient/$Match
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The matching patients are retrieved from the NHI.
5. The response containing a bundle of matching patient resources is returned to the integrating application - ALT: Empty bundle returned
6. The integrating application displays the matching patients to the user.


#### Rules and errors

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
    * address (primary resedential)
    * match score

  * Other details to consider presenting:
    *  birth-place (Place and Country of birth)
    *  other names a person has
    *  nhi-id (dormant/s)

* _Match Patient errors_
  * _Patient name is a required field_
  * _Patient birthdate is a required field_
  * _No results were found matching the search criteria provided_
  * _Criteria too wide to perform a successful match. Please narrow your criteria and re-submit_
