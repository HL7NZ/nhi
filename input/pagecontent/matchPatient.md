

### Match Patient Overview

When an NHI number is not known, a match by demographics can be used to find the patient record. For the patient match service, the name and birthdate are required at a minimum. Other demographics such as gender, birthplace and address can be used to improve the match results. 

The NHI search uses a probabilistic search and returns results in order of their match score with the highest scoring result returned as the first in the bundle. The more match criteria provided, in as complete a form as is known, the more accurate the results returned will be. It is better to enter the complete name even if spelling is not accurate, than entering just part of the name.

Results are scored on the following basis:
* A score is assigned to each record that represents how closely it matches the match parameters
* Each match parameter (e.g., Surname, year of birth, month of birth etc) is assigned a score, and weighted for importance. The sum of the individual scores makes up the overall score.
* The weightings vary based on a tuning process, with names weighted approximately twice as highly as a date of birth.

Other notes on matches:
* All names including active and inactive names (names that have previously been used) are considered by the match.
* Phonetic similarities are considered (spellings and variations that sound the same).
* The match ignores differences between upper and lower case, punctuation, diacritics and dashes.
* The popularity of a name will impact the score e.g., a match on Jack will score lower than a match on Edwin because there are more people in the index named Jack than Edwin.
* When names are in the same order as the match criteria, they will score slightly better than when the order is different e.g. Jane Mary Smith vs. Mary Jane Smith
* Names with similar spelling are considered for scoring. Minor spelling mistakes are catered for. E.g. If Sasha is being searched for then Sahsa would get some score and so would Sarah but Raewyn would not.”

**Note to testers:**

Patient $Match does not enable searching in the same way that  Patient Search does. You cannot expect results like a usual string search would provide for a search on patient name. The NHI search is tuned and tested specifically for the kinds of names typically found in the NZ population, the test data you are using is unlikely to reflect the make up of names in the production NHI.  Our compliance tests for $Match Patient will indicate what NHI should be the highest scoring result and the score you should expect if you use the input criteria as indicated in the test.




<div>
{% include match-patient.svg %}
</div>



**Match Patient processing steps:**
 
1. The user supplies patient details to be be matched against the NHI patient records
2. The integrating application sends an HTTP Post request (E.g. Post\<Endpoint>/Patient/$match) using the $match operation to the NHI with 'In Parameters' (A Patient resource, onlyCertainMatches set to False, and a count (optional)).
6. The request is validated - ALT: Validation failure. Operation Outcome resource returned
7. The matching patients are retrieved from the NHI.
8. The response containing a bundle of matching patient resources is returned to the integrating application - ALT: Empty bundle returned
9. The integrating application displays the matching patients to the user.

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
<td> See match request example (link below) </td></tr>

<tr><td> onlyCertainMatches: 0 (False) </td>
<td> boolean </td>
<td> Mandatory </td>
<td> Must be set to false </td></tr>

<tr><td> count </td>
<td> valueInteger </td>
<td> Optional </td>
<td> The maximum number of records to return. Note that interators should be careful when using this, as it may prevent probable - and valid - matches from being returned </td></tr>
</table>
 


#### Behaviour:

* The NHI does a search using supplied Patient demographics
* A bundle of patient records that represent possible matches is returned
* Each record will have a match score from 40 (least likely) - 140 (most likely)
  * Scores below 40 are not returned.
* The highest scoring records are returned first in the bundle

Note: To be more FHIR compliant this will be changed to return:
* A search score most likely (1) to least likely (0)
* A "match-grade": (Certain Match / Possible Match)



#### Privcy requirements

* Te Whatu Ora does not require a Get to be done after a match request
* Te Whatu Ora will log details of each NHI returned by a match operation so that any privacy requests from people wanting to know which organisations and users have retrieved their NHI record, can be responded to
* Integrating systems should also ensure they have sufficient logging in place to respond to similar requests

#### Example request

For an example Match request body [click here](/artifacts.html#example-example-instances)

#### Match Patient Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

##### Match Patient rules
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


---


* _Match Patient errors_
  * _Patient name is a required field_
  * _Patient birthdate is a required field_
