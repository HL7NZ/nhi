
The following notes apply to all resources in this implementation.



### Resource representation: Json

Only Json is supported by this implementation.


### Id and Identifiers

All of the FHIR resources in this implementation have both an id and an identifier.

The id is the ‘physical’ identity of the resource, and the identifier is the business identifier. 

In this implementation, **the id of the resource will always be the same as the value of the identifier assigned by the HPI with a use value of ‘official’**. (There will only ever be a single identifier with this use type and system in a resource). Thus the id for the resource below would be ‘ZAT2348’, and the url something like:

https://api.hip.digital.health.nz/fhir/Patient/ZAT2348

This design allows an implementer to retrieve a resource from the NHI and save it on their own system, but still be able to retrieve the original to check for updates.


#### Read resource by id


Extract the value of the identifier where the value of the __use__ element is ‘official’, and use that as the id for a direct read from the server. 

Example:

Get\<Endpoint>/Resource/identifier

Get\<Endpoint>/Patient/ZAT2348

For more information look at the __Get patient Use case__ in the menu


### Merging resource and Dormant identifiers

In some cases, a single entity may have been accidentally assigned multiple identifiers. When this is discovered to have occurred, one of the identifiers becomes a ‘dormant’ identifier, leaving the other as the active one. Both identifiers will appear in the resource identifier list, with the dormant identifiers having a _use_ value of ‘old’ and the active having a _use_ value of ‘official’. 

When reading the resource, if the 'dormant' identifier is used, the resource returned will be the live resource, an include both the identifiers, the 'active' with a *use* value of ‘official’ and the dormant with a *use* value of ‘old’.)

For example, assume that there are 2 Patient resources exposed by the NHI, each with a single identifier. The id of the resource matches the identifier value.


```
{
  "resourceType": "Patient",
  "id": "ZAT2534",
"identifier": [ {
    "use": "official",
    "system": "https://standards.digital.health.nz/ns/nhi-id",
    "value": "ZAT2534",
}

]
… other data
}

```


(returned by GET\<Endpoint>/Patient/ZAT2534)

And 


```
{
  "resourceType": "Patient",
  "id": "ZAT2518",
"identifier": [ {
    "use": "official",
    "system": "https://standards.digital.health.nz/ns/nhi-id",
    "value": "ZAT2518",
}

]
… other data
}

```


(returned by GET\<Endpoint>/Patient/ZAT2518)

They are determined to be the same person, and the identifier ZAT2518 is made dormant in favour of ZAT2534.

A GET call of GET\<Endpoint>/Patient/ZAT2534 or GET\<Endpoint>/Patient/ZAT2518 will return the same response


```
{
  "resourceType": "Patient",
  "id": "ZAT2534",
"identifier": [ {
    "use": "official",
    "system": "https://standards.digital.health.nz/ns/nhi-id",
    "value": "ZAT2534"},
{
    "use": "old",
    "system": "https://standards.digital.health.nz/ns/nhi-id",
    "value": "ZAT2518"},
]
… other data
}

```

### Errors

#### HTTP Error response codes

<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Status code </th>
<th> Description </th></tr>

<tr><td> 400 </td>
<td> Bad Request </td></tr>

<tr><td> 401 </td>
<td> The client needs to provide credentials, or has provided invalid credentials. </td></tr>

<tr><td> 403 </td>
<td> Authentication was provided, but the authenticated user is not permitted to perform the requested operation. </td></tr>

<tr><td> 404 </td>
<td> Resource not found </td></tr>

<tr><td> 405 </td>
<td> HTTP method not allowed </td></tr>

<tr><td> 409 </td>
<td> Resource conflict, the version provided for the resource is not the current version </td></tr>

<tr><td> 413 </td>
<td> The request body was too big for the server to accept </td></tr>

<tr><td> 422 </td>
<td> Unprocessable Entity, resource was rejected by the server because it “violated applicable FHIR profiles or server business rules” </td></tr>

<tr><td> 500 </td>
<td> General system failure </td></tr>

<tr><td> 429 </td>
<td> Exceeded quota </td></tr>
</table>


#### Request Rules and Errors

* **Request rules**
  * Every request must include an:
    * http header item UserId that uniquely identifies the individual initiating the request.
    * OAuth 2 access token
    * An api-key
  * Each user must have an individual userID

* _Request errors_
  * _Authentication: missing userid header_,  _HTTP401, Processing_
  * _Unauthorized_,  _HTTP401_
  * _Forbidden, HTTP403_

#### Error Format

Error responses may contain a FHIR operation outcome:
We’re transitioning to the following operation outcome

```

{
  "resourceType": "OperationOutcome",
  "issue": [ {
    "severity": "error",
    "code": "processing",
    "details": {
      "coding": [ {
        "system": "https://standards.digital.health.nz/ns/hip-operation-outcome-details-code",
        "code": "EM07106",
        "display": "Record version provided is out of date. The record cannot be updated"
      } ]
    },
    "expression": [ "Patient.identifier:NHI" ]
  } ]
}

```

But not all errors have been converted or assigned error codes, the unconverted errors use:

```

{
  "resourceType": "OperationOutcome",
  "issue": [ {
    "severity": "error",
    "code": "processing",
    "diagnostics": "Authentication: missing userid header"
  }

```

### HTTP Header Details

* This is a list of any additions to standard HTTP header protocol

<h3>Request Headers</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> HTTP Header (Key) </th>
<th> HTTP Header (Value) </th>
<th> Description </th>
<th> Mandatory / Recommended / Optional </th></tr>

<tr><td> Authorization </td>
<td> Bearer {string} </td>
<td> The OAuth2 access token </td>
<td> Mandatory </td></tr>

<tr><td> userid </td>
<td> Bearer {string} </td>
<td> Client provided <br />
All requests for all resources must include an http header userid that uniquely identifies the individual initiating the request <br />
Preferably the hpi-person-id of the user would be provided if known, otherwise a userid that allows the authenticated organisation to identify the individual </td>
<td>Mandatory</td></tr>

<tr><td> X-Correlation-Id </td>
<td> {string} </td>
<td> Client provided <br />
All requests should contain a unique transaction id in the X-Correlation-Id field <br />
If present in the request this will be returned in the response, and can be used to track API calls <br />
Preferred less than 64 characters <br /> </td>
<td> Recommended </td></tr>

<tr><td> Content-Type </td>
<td> Application/json </td>
<td> Supported content type </td>
<td> Mandatory </td></tr>

<tr><td> x-api-key </td>
<td> {string} </td>
<td> Te Whatu Ora Provided – issued with client credentials </td>
<td> Mandatory </td></tr>
</table>

<h3>Response Headers</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Element name </th>
<th> Value </th>
<th> Description </th></tr>

<tr><td> X-Correlation-Id </td>
<td> {string} </td>
<td> Returned if provided </td></tr>

<tr><td> X-request-Id </td>
<td> {string} </td>
<td> Unique identifier for the request within the NHI </td></tr>

<tr><td> ETag </td>
<td> {string} </td>
<td> The resource version number, returned on a Get </td></tr>
</table>

### Security

#### OAUTH2

The HPI server uses the OAUTH2 Client Credentials flow for authentication and authorisation and complies with the SMART specification for backend services

#### Scopes

The following scopes are supported

<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Version 1 Scopes </th><th> SMART on FHIR Scopes </th><th> Description </th></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/patient:read   </td><td> https://api.hip.digital.health.nz/fhir/system/Patient.r </td><td> Read access to all Patient resources </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/patient:search </td><td> https://api.hip.digital.health.nz/fhir/system/Patient.s </td><td> Search (Match) access to Patient resources </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/patient:validate </td><td> https://api.hip.digital.health.nz/fhir/system/Patient.v </td><td> Access to Patient resources to vaidate a patient only </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/patient:write </td><td> https://api.hip.digital.health.nz/fhir/system/Patient.u </td><td> Update access to all Patient resources </td></tr>
</table>

#### API Keys and Usage Plans

Clients will be emailed their API key, which should be treated as confidential information and not shared with other parties

An api-key associates the client with a usage plan, which sets upper limits on the API request volume which is permitted. If a client exceeds their usage plan allocation an http error will be returned

Clients will need to add there api key to the x-api-key header in each API request. If no API key is included in the request header, a “Forbidden” error will be returned

<h3>Usage Plans</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Plan </th>
<th> Rate </th>
<th> Burst </th>
<th> Quota </th></tr>

<tr><td> bronze </td>
<td> 1 request per second </td>
<td> 5 </td>
<td> 10,000 requests per day </td></tr>

<tr><td> silver </td>
<td> 5 requests per second </td>
<td> 25 </td>
<td> 250,000 requests per day </td></tr>

<tr><td> gold </td>
<td> 10 requests per second </td>
<td> 50 </td>
<td> 500,000 requests per day </td></tr>
</table>

All test accounts will be assigned to the bronze usage plan

Production accounts will be assigned to the silver usage plan. If a client wished to be assigned to the gold usage plan, they should contact the Te Whatu Ora NHI access team

If an application reaches its usage plan limit an HTTP 429 error will be returned. The expected behaviour is that the application will retry several times with an exponentially increasing delay
