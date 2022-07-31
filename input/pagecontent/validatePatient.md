

### Validate Pactient

<div>
{% include validate-patient.plantuml.svg %}
</div>

Validate Patient processing steps:

1. The user initiates a validate request in the integrating application
2. The integrating application sends an HTTP POST request using a $Match operation to the NHI with onlyCertainMatches set to True
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The NHI validates whether the Patient details and NHI number provided are a certain match
5. If there is a certain match the NHI FHIR API returns a Bundle containing only the Patient record with NHI number showing. Alt: Empty Bundle returned.
6. The integrating application displays the results of the validate to a user.

### Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

1.	**Validate Patient rules**

 * 
      _1a. Validate Patient errors_

      * 
