
Extension: NhiContact
Id: nhi-contact
Description: "Additional attributes for managing patient contact information"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nhi-contact"

//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "Patient"

* extension contains
	isValidFormat 0..1 and
	isValidDomain 0..1 and
    isVerified 0..1 and 
    isShared 0..1 and
    isPrivate 0..1


* extension[isValidFormat] ^definition = "The format of the email address is valid (true or  false)"
* extension[isValidFormat].valueBoolean



* extension[isValidDomain] ^definition = "The domain of the email address is valid (true or  false)"
* extension[isValidDomain].valueBoolean



* extension[isVerified] ^definition = "Verification has  been performed to determine that the email can be used to communicate with the patient (true or false)"
* extension[isVerified].valueBoolean


* extension[isShared] ^definition = "The email address is shared with other people (true or false)"
* extension[isShared].valueBoolean



* extension[isPrivate] ^definition = "The email address may be used to communicate private health information about the individual identified by the NHI"
* extension[isPrivate].valueBoolean



