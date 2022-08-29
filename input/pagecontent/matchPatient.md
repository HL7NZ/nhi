

### Match Patient Overview

* The local system sends a request to the NHI with patient details to match
* The NHI does a search and returns a bundle of patient records that represent possible matches
* These are ordered from most likely (1) to least likely (0)

<div>
{% include match-patient.svg %}
</div>

Match Patient processing steps:
 
1. The user supplies patient details to be be matched against the NHI patient records
2. The integrating application sends an HTTP Post request using a $Match operation to the NHI with onlyCertainMatches set to False
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The matching patients are retrieved from the NHI.
5. The response containing a bundle of matching patient resources is returned to the integrating application - ALT: Empty bunde returned
6. The integrating application displays the matching patients to the user.


#### Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

1.	**Match Patient rules**

 * 
      _1a. Match Patient errors_

      * 
