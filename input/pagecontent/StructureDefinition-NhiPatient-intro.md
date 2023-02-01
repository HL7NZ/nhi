

### Core NHI Profile attributes

The NHI Patient resource represents the nationally held identity data for a patient.

This includes the core NHI Profile attributes:
* name (including alternative names such as maiden names)
* NHI number
* address
* date of birth
* gender
* New Zealand resident and citizenship status
* place of birth
* ethnicity
* date of death

The core NHI Profile attributes are returned to all users that have read and/or $match access to the NHI (link scopes)



### Key differences from HL7 FHIR Patient specification

* Ethnicity extension
* NZ Citizenship and Residency extension
* Dhb extension
* Birthplace extension
* Name
  * information source extension
  * preferred extension
  * nhi-name-use-extra extension
* Gender original text extension
* Birthdate information source extension
* Deceased date extension
* Address
  * nz-geocode extension
  * suburb extension
  * building-name extension
  * domicile-code extension
  * notValidatedAddressReason extension
  * nz-address-id extension
  * nz-address-derived extension
* contained:GP extension



### Patients enrolled General Practice

The details for the Patient’s enrolled General Practice (GP) are returned in the NHI Patient Profile to users who have permission to access a Patient’s National Enrolment Service (NES) information. This is an additional permission required on your NHI FHIR account.

The NES details are maintained in real time in the NES database, which holds the relationship of a Patient (NHI number), to their Enrolling GP Practice (hpi-organisation-id), GP clinic (hpi-facility-id) and where available the patients usual doctor (hpi-person-id / CPN).

A subset of the NES enrolment information is returned in the NHI FHIR GET response. It is returned in the patient generalPractitioner attribute as a contained PractitionerRole resource:

-	Health Service code = FLS
-	Only active (un-ended) enrolments

<h3>Patients enrolled GP FHIR mapping</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>FHIR attribute (PractitionerRole Resource)</th>
<th>NES Enrolment Information</th>
<th>Description</th></tr>

<tr><td>id</td>
<td>The NES enrolment id</td>
<td>Unique identifier of the Patient Enrolment record. <br />
This will change when a patient transfers to a new practice, but will not reflect minor changes within an enrolment.</td></tr>

<tr><td> Period.start </td>
<td> enrolment.startDate </td>
<td> The date on which the Enrolment starts </td></tr>

<tr><td> Period.end </td>
<td> enrolment.expiryDate </td>
<td> The future date on which the Enrolment will expire. </td></tr>

<tr><td> Practitioner (reference / display) </td>
<td> Practitioner identifier (CPN) and name </td>
<td> The hpi-person-id (CPN) and name of the Practitioner who primarily provides the service to the patient. </td></tr>

<tr><td> Organization (reference / display) </td>
<td> enrolling organisation ID and name </td>
<td> The hpi-organisation-id and name of the Organisation who the Patient enrols with for the Heath Service. </td></tr>

<tr><td> Location (reference / display) </td>
<td> Facility ID and name </td>
<td> The hpi-facility-id and name of the Facility where the patient primarily receives the service. </td></tr>
</table>

The generalPractitioner is only returned with a read on the resource (not returned with a $match – even if a user has the correct permissions).

For information on enrolment history, re-enrolment dates, enrolment status, or the last visit date (qualified encounter date) please prescribe to the NES service



### Patient Contact details

The patient’s contact details are returned in the Patient.telecom attribute to users who have permission to access Patient Preferences. This is an additional permission required on your NHI FHIR account. 

The contact details are only returned with a read on the resource (not returned with a $match – even if a user has the correct permissions).

The information returned may include:
-	Preferred email address
-	Preferred home phone number
-	Preferred mobile phone number

