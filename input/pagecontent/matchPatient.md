

### Match Patient

#### Overview

The local system sends a request to the NHI with patient details to match <br />
The NHI does a search and returns a bundle of patient records that represent possible matches <br />
These are ordered from most likely (1) to least likely (0)

<div>
{% include match-patient.svg %}
</div>

Match Patient processing steps:
 
1. The user supplies patient details to be be matched against the NHI patient records
2. The integrating application sends an HTTP Post request using a $Match operation to the NHI with onlyCertainMatches set to False
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The NHI matches the patient details provided with NHI Patient records.
5. The NHI returns A bundle of patient resources ordered from most to least likely. ALT: Empty bunde returned
6. The integrating application displays the returned patients to the user.


#### Rules and errors

[For Request rules and errors click here](/pagecontent/general.md#request-rules-and-errors)

1.	**Match Patient rules**

 * 
      _1a. Match Patient errors_

      * 
