
### Consumer Facing APIs

#### Background

Te Whatu Ora has implemented a Consumer Facing API Authentication Pattern to allow a person to access and update information held about them using their NHI number.
The pattern describes how an end user's NHI can be securely established and communicated to a resource provider via a REST API. This is an implementation of the OAUTH2/OIDC Authorisation Code flow.

The trusted identity provider (idp) is My Health Account (MHA). [For more information click here](https://marketplace.hira.health.nz/digital-services/digital-health-identity-2/)

#### Prerequisites

* The person (end user) must have a MHA Level 3N with an NHI bound to that account. 
* The API will only grant the end user access to their own NHI information.
* The Client Application must be registered with MHA.
* The Client Application must be permitted SMART patient scopes on the resource being accessed.
* The IdP must issue access tokens with SMART patient scopes
* The IdP must have obtained end user consent prior to issuing the access token.


### Consumer Facing API and the NHI FHIR Service

#### Client Onboarding

The client registration process involves both the NHI FHIR service and the IdP.
* The IdP will provide the client_ID, client_secret and SMART on FHIR scopes.
* The NHI FHIR service will provide an API Key and approve any scopes granted to the client.
  * OAUTH2 scopes are granted by the IdP to the client application, not the end user).
For more information see [online onboarding request form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/67)

#### Compliance Testing

Compliance testing will need to be completed for both the idp and the NHI FHIR service. <br />
To view the NHI FHIR FHIR Consumer Facing API Compliance tests [Click here](/ConsumerAuthComplianceTesting.html)

#### Component View

<img style="width:400px; float:none" src="ConsumerFacingAuthComponentView.png"/>

* **Health Consumer** - a person with an NHI
* **Resource Provider (NHI FHIR API)**- the system that implements the API and provides access to a resource referenceable by NHI (NHI FHIR API).
* **Client Application** - a system that consumes the API on behalf of the health consumer
* **My Health Account**
  * **IDP** - Identity Provider, able to grant access tokens
  * **Login** - login UI via which the Health Consumer presents their credential's to MHA in order to establish their identity, and provide their consent to the Client Application
  * **User Info** - OIDC endpoint which enables the Resource Provider to obtain the NHI number assigned to the Health Consumer

#### Consumer Facing API

##### Access my NHI record - Communication View

<div>
{% include ConsumerAuthAccessNHI.svg %}
</div>

<h5>Access my NHI record - Important information</h5>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th> Reference </th>
<th> Comments </th>
</tr>

<tr>
<td><b>Oauth scope</b></td>
<td>patient:Patient.r</td>
</tr>

<tr>
<td><b>Operation</b></td>
<td>Patient read <br /> GET\<Endpoint>/Patient/[nhi-id] </td>
</tr>

<tr>
<td><b>Get Rule</b></td>
<td>A request from a consumer facing application can only access the NHI record of the requester i.e. the NHI linked to the MHA</td>
</tr>

<tr>
<td><b>Atributes returned with a Get Request</b></td>
<td>
<ul>
  <li>NHI numbers
    <ul>
      <li>Live and all dormants</li>
    </ul>
  </li>
  <li>Names
   <ul>
     <li>All names and name details</li>
   </ul>
  </li>
  <li>Address
   <ul>
     <li>All address details</li>
   </ul>
  </li>
  <li>Gender
   <ul>
     <li>Gender</li>
     <li>gender-original-text(if present)</li>
   </ul>
  </li>
  <li>Birthdate
   <ul>
     <li>All Birthdate details</li>
   </ul>
  </li>
  <li>BirthPlace
   <ul>
     <li>All BirthPlace details</li>
   </ul>
  </li>
  <li>DeathDate
   <ul>
     <li>All Date of death details</li>
   </ul>
  </li>
  <li>Ethnicity
   <ul>
     <li>All ethnicity details</li>
   </ul>
  </li>
  <li>NZ Citizenship
   <ul>
     <li>All NZ Citizenship status details</li>
   </ul>
  </li>
  <li>DHB
   <ul>
     <li>The DHB code, derived from the persons address</li>
   </ul>
  </li>
</ul>
</td>
</tr>

<tr>
<td><b>Future scope</b></td>
<td>
  <ul>
    <li>Telecom / Contacts
    <ul>
      <li>All contact details (email address, mobile phone and home phone(if present)</li>
    </ul></li>
    <li>General practitioner
      <ul>
        <li>Returns the person's enrolled General Practice details included as a contained ‘PractitionerRole resource’</li>
      </ul>
    </li>
  </ul>
</td>
</tr>
</table>

For more information on the attributes please see the [NHI FHIR Patient profile](/StructureDefinition-NhiPatient.html)



#### Consumer Facing API - Update my NHI record

##### Update my NHI record - Communication View

<div>
{% include ConsumerAuthUpdateNHI.svg %}
</div>

<h5>Update my NHI record - Important information</h5>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Reference </th>
<th> Comments </th></tr>

<tr>
<td><b>Oauth scope</b></td>
<td>patient:Patient.u</td>
</tr>

<tr>
<td><b>Operations available</b></td>
<td>
  <ul>
    <li><a href="updateName.html#set-preferred-name-overview">$set-preferred-name</a></li>
    <li><a href="updateAddress.html#set-address">$set-address</a></li>
    <li><a href="updateAddress.html#remove-postal-address">$remove-postal-address</a></li>
    <li><a href="updateIdentity.html#update-identity">$update-identity</a></li>
  </ul>
</td>
</tr>

<tr>
<td><b>Rules - general</b></td>
<td>An update request from a consumer facing application can only update the NHI record of the requester i.e. the NHI linked to the MHA</td>
</tr>

<tr>
<td><b>Rules - $set-preferred-name</b></td>
<td>
  <ul>
   <li>All rules from <a href="updateName.html#set-preferred-name-overview">$set-preferred-name</a> apply, and </li>
   <li>Must not set Preferred name to a BabyOf name</li>
  </ul>
</td>
</tr>

<tr>
<td><b>Rules - $set-address</b></td>
<td><li>All rules from <a href="updateAddress.html#set-address">$set-address</a> apply</li></td>
</tr>

<tr>
<td><b>Rules - $remove-postal-address</b></td>
<td><li>All rules from <a href="updateAddress.html#remove-postal-address">$remove-postal-address</a> apply</li></td>
</tr>

<tr>
<td><b>Rules - $update-identity</b></td>
<td><li>All rules from <a href="updateIdentity.html#update-identity">$update-identity</a> apply</li>
<ul>
  <li> Ethnicity
  <ul>
    <li>Application must present the <a href="FAQ.html#how-should-my-application-present-the-standard-ethnicity-question">standard ethnicity question</a> and supply the consumer selected reponses</li>
  </ul>
  </li>
  <li> Gender
  <ul>
    <li>Application must present the <a href="FAQ.html#how-should-my-application-present-the-standard-gender-question"> and supply the consumer selected or entered text response</li>
  </ul>
  </li>
</ul>
</td>
</tr>

<tr>
<td><b>Future scope</b></td>
<td><li>TBC</li></td>
</tr>
</table>
