
The following notes apply to all resources in this implementation.


### Resource representation: Json & XML

Resources can be expressed either as Json or XML, and both formats are supported by this implementation.


### Request Rules and Errors

1. **Request rules**
 * Every request must include an http header item UserId that uniquely identifies the individual initiating the request
 * Each user must have an individual UserID
 * When a userID has an HPI CPN format it must be a valid HPI CPN number
 * The OAUTH2 token contains the requesting organisation and application identifiers that are used for auditing

      _1a. Request errors_
      * _The Patient HTTP header UserID is a required field_
      * _The HTTP header UserID CPN format. The CPN is invalid_
      * _The OAUTH2 userId token is missing or invalid_



### HTTP Header Details
TBC

### Security
TBC
