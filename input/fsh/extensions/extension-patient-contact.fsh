
Extension: NhiContact
Id: nhi-contact
Title: "NHI Contact"
Description: "Additional attributes for managing patient contact information"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nhi-contact"

//* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "Telecom"

* extension contains
    isVerified 0..1 and 
    isShared 0..1 and
    isPrivate 0..1 and
    context 0..1 and
    lastUpdatedDate 0..1
    

//* extension[isValidFormat] ^short = "The format of the email address or phone number is valid (true or  false)"
//* extension[isValidFormat].value[x] only boolean

//* extension[isValidDomain] ^short = "The domain of the email address is valid (true or  false)"
//* extension[isValidDomain].value[x] only boolean

* extension[isVerified] ^short = "Verification has  been performed to determine that the email or phone number can be used to communicate with the patient (true or false)"
* extension[isVerified].value[x] only boolean

* extension[isShared] ^short = "The email address or phone number is shared with other people (true or false)"
* extension[isShared].value[x] only boolean

* extension[isPrivate] ^short = "The email address or phone number may be used to communicate private health information about the individual identified by the NHI"
* extension[isPrivate].value[x] only boolean

* extension[context] ^short = "Additional information about the context of use of this contact"
* extension[context].value[x] only string

* extension[lastUpdatedDate] ^short = "The date this contact was last updated"
* extension[lastUpdatedDate].value[x] only date

