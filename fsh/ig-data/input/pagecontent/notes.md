### XML and Json
Both XML and Json representations are supported, with the default being Json. A client can specify the representation it wants using the _Accept_ HTTP header as described in [the spec](http://hl7.org/fhir/http.html#mime-type).

### NHI representation
The NHI is represented in the Patient resource in the _Patient.identifier_ element. Each patient has a single current (or active) NHI number, but can have multiple inactive NHI numbers - duplicate entries that have been merged and should no longer be used.

They are distinguished using the _use_ element which has the possible values:

* _official_ - the active NHI
* _old_ - the dormant ones.


In the Json example below, _ABC1234_ is the current NHI, while _DEF4567_ and _HIJ8900_ are dormant ones that heve been merged.

	...
  	"identifier": [
	    {
	      "use": "official",
	      "system": "https://standards.digital.health.nz/id/nhi",
	      "value": "ABC1234"
	    },
	    {
	      "use": "old",
	      "system": "https://standards.digital.health.nz/id/nhi",
	      "value": "DEF4567"
	    },
	    {
	      "use": "old",
	      "system": "https://standards.digital.health.nz/id/nhi",
	      "value": "HIJ8900"
	    }
  	]
  	...


### Patients GP



In the Patient resource, the patients usual GP is indicated by a reference to a [PractitionerRole](http://hl7.org/fhir/practitionerrole.html) resource, which is a 'linking' resource that allows the NHI to indicate:


| Element | PractitionerRole element | Target resource type | HPI Identifier system |
| --- | --- | --- |
| The usual GP | PractitionerRole.practitioner | Practitioner | https://standards.digital.health.nz/id/hpi-person (CPN)| 
| The General Practice to which they belong | PractitionerRole.organization | Organization | https://standards.digital.health.nz/id/hpi-organisation |
| The location of the practice | PractitionerRole.location | Location| https://standards.digital.health.nz/id/hpi-facility |


The following diagram shows these relationships when the references are to resource instances (as would be provided by the HPI)


<img style="float:none" src="GP-diagram.png" >

As the HPI FHIR interface is not yet ready, this initial implementation is using an alternative form of referencing - the [Logical Reference](https://standards.digital.health.nz/id/hpi-facility). This format means that the reference from PractitionerRole contains the identifier of resource, rather than it's location on a FHIR server.

A 'normal' reference would look like this: 

    ...
    "generalPractitioner": [
        {
           "reference": "Practitioner/abc123"
        }
    ]
    ...

where the id of the practitioner (not their CPN identifier) is abc123. The client would need to retrieve the Practitioner resource to get the CPN. Note that there can be more than one GP - although the NHI supports only a single one.

The 'logical' reference looks like this:


    ...
    "practitioner": {
        "type": "Practitioner",
        "identifier": {
          "system": "https://standards.digital.health.nz/id/hpi-person",
          "value": "hpiNum1"
        },
        "display": "Dr Marcus Welby"
      },
      ...


where the CPN is in the reference and not the id of the Practitioner. This has the advantage of including the CPN without requiring another call to the HPI, though does not include the other data about the Practitioner.

#### Contained 

In this implementation, the PractitionerRole resource is not separate to the Patient resource - rather it is contained within the Patient resource.

Refer to [the example](Patient-Gp-Patient.html) of representing a patients GP. 