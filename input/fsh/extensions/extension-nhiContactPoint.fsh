Extension: NhiContactPointExtra
Id: nhi-contact-point-extra
* ^context.type = #element
* ^context.expression = "Telecom"

* extension contains   
    IsVerified 0..1 and   
    IsShared 0..1  and
    IsPrivate 0..1 and
    Context 0..1 and
    LastUpdatedDate 0..1
    

Extension: IsVerified
Id: IsVerified
Title: "isVerified"
Description: "The email address or phone number has been verified (true or  false)."
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/isVerified"
* value[x] only boolean

Extension: IsShared
Id: IsShared
Title: "isShared"
Description: "The email address or phone number is shared with other people (true or false)"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/isShared"
* value[x] only boolean


Extension: IsPrivate
Id: IsPrivate
Title: "isPrivate"
Description: "The email address or phone number may be used to communicate private health information about the individual identified by the NHI"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/isPrivate"
* value[x] only boolean


Extension: Context
Id: Context
Title: "context"
Description: "Additional information about the context of use of this contact"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/context"
* value[x] only string



Extension: LastUpdatedDate
Id: lastUpdatedDate
Title: "LastUpdatedDate"
Description: "The date this contact was last updated"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/lastUpdatedDate"
* value[x] only date

