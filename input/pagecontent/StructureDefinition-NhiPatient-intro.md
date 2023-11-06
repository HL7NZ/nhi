

### Core NHI Profile attributes

The NHI Patient resource represents the nationally held identity data for a patient.

This includes the core NHI Profile attributes:
* name (including alternative names such as maiden names)
* NHI number (live and any dormants)
* address
* date of birth
* gender
* New Zealand citizenship status
* place of birth
* ethnicity
* date of death

The core NHI Profile attributes are returned to all users that have read and/or $match access to the NHI



### Key differences from HL7 FHIR Patient specification

* Ethnicity extension
* NZ Citizenship extension
* Dhb extension
* Birthplace extension
* Name
  * information source extension
  * preferred extension
  * nhi-name-use-extra extension
* Gender original text extension
* Birthdate information source extension
* Deceased date information source extension
* Address
  * nz-geocode extension
  * suburb extension
  * building-name extension
  * domicile-code extension
  * notValidatedAddressReason extension
  * nz-address-id extension
  * nz-address-derived extension

### New NHI Number Format and check digit calculation

For more information [click here](https://www.health.govt.nz/our-work/health-identity/national-health-index/upcoming-changes-nhi-numbers) for website links or [click here](https://www.tewhatuora.govt.nz/publications/hiso-100462022-consumer-health-identity-standard/) for the consumer health identity standard, that includes the check digit calculation.


### Person's General Practice

The details for a person’s General Practice (GP) are returned in the NHI Patient Profile to users who have permission to access a person’s National Enrolment Service (NES) information. 

This is an additional permission required on your NHI FHIR account.

The NES details are maintained in real time in the NES database, which holds the relationship of a Patient (NHI number), to their GP Practice (hpi-organisation-id), GP clinic (hpi-facility-id) and where available the person's usual doctor (hpi-person-id / CPN).

Changes to the NES in October 2023 allows a patient’s GP Practice details to be recorded for both patients that are funded and also patients who are registered with a practice but not eligible for PHO funding. This change allows the Get Patient response to return the GP Practice details for both types of patients.  

The expiry date for a registered patient is set to 01/01/2100 whereas the expiry date for an enrolled patient is never more than 3 years in the future.

For more information on what is available in the NES FHIR API please see [NES UAT Implementation guide](https://nes-ig.hip-uat.digital.health.nz). 

In the NHI the person'sG P is only returned with a read on the resource. It is not returned in the $match response – even if a user has the correct permissions.

The patient version-id does not change when the GP changes. This is because the person's GP is not held in the NHI but is retrieved from the National Enrolment Service and returned along with the NHI details in the NHI Patient profile. The patient version-id only reflects changes to details held on the NHI.

For information on enrolment history, re-enrolment dates, enrolment status, or the last visit date (qualified encounter date) please subscribe to the NES.

A subset of the NES enrolment information is returned in the NHI FHIR GET response.

Enrolment information is returned in two places in the NHI patient profile:
* the "generalPractitioner" attribute: 	This is the NES enrolment id.
* the "contained" PractitionerRole resource: This holds the NES enrolment information as described below.


<h4>NES to FHIR mapping</h4>
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
<td>Unique identifier of the person's enrolment record. <br />
This will change when a person transfers to a new practice, but will not reflect minor changes within an enrolment.</td></tr>

<tr><td> Period.start </td>
<td> enrolment.startDate </td>
<td> The date on which the Enrolment starts </td></tr>

<tr><td> Period.end </td>
<td> enrolment.expiryDate </td>
<td> The future date on which the Enrolment will expire. </td></tr>

<tr><td> Practitioner (reference / display) </td>
<td> Practitioner identifier (CPN) and name </td>
<td> The hpi-person-id (CPN) and name of the Practitioner who primarily provides the service to the person. </td></tr>

<tr><td> Organization (reference / display) </td>
<td> enrolling organisation ID and name </td>
<td> The hpi-organisation-id and name of the Organisation who the person enrols with for the Heath Service. </td></tr>

<tr><td> Location (reference / display) </td>
<td> Facility ID and name </td>
<td> The hpi-facility-id and name of the Facility where the person primarily receives the service. </td></tr>
</table>


#### Example of contained resource

```
"contained": [
        {
            "resourceType": "PractitionerRole",
            "id": "525599",
            "period": {
                "start": "2023-01-26T00:00:00+13:00",
                "end": "2026-01-26T00:00:00+13:00"
            },
            "practitioner": {
                "reference": "Practitioner/25ADNX",
                "display": "Dr Nick"
            },
            "organization": {
                "reference": "Organization/GAAAAA-0"
                "display": "Riviera Health Care"
            },
            "location": [
                {
                    "reference": "Location/FZZ862-H",
                    "display": "Dr Nick's Guaranteed Health Clinic"
                }
            ]
        }
    ]
```





### Patient's Contact details

The patient’s contact details are returned in the Patient.telecom attribute to users who have permission to access Patient Preferences. This is an additional permission required on your NHI FHIR account.

The contact details are only returned with a read on the resource. They are not returned in the $match response – even if a user has the correct permissions.

The patient version-id does not change when the patient's contact details change. This is because the patient's contact details are not held in the NHI but are retrieved from the National Enrolment Service and returned along with the NHI details in the NHI Patient profile. The Patient Version-id only reflects changes to details held on the NHI.

The information returned may include:
-	Email address
-	Home phone number
-	Mobile phone number

#### Example of Patient contact details

```
    "telecom": [
        {
            "system": "email",
            "value": "test.contact@testContact.com",
            "use": "home"
        },
        {
            "system": "phone",
            "value": "0275151510",
            "use": "mobile"
        },
        {
            "system": "phone",
            "value": "045882334",
            "use": "home"
        }
```
