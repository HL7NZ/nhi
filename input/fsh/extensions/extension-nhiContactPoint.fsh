Extension: IsVerified
Id: IsVerified
Title: "isVerified"
Description: "The format of the email address or phone number is valid (true or  false)."
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/isVerified"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only boolean

Extension: IsShared
Id: IsShared
Title: "isShared"
Description: "The email address or phone number is shared with other people (true or false)"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/isShared"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only boolean


Extension: IsPrivate
Id: IsPrivate
Title: "isPrivate"
Description: "The email address or phone number may be used to communicate private health information about the individual identified by the NHI"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/isPrivate"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only boolean


Extension: Context
Id: Context
Title: "context"
Description: "Additional information about the context of use of this contact"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/context"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only string



Extension: LastUpdatedDate
Id: lastUpdatedDate
Title: "LastUpdatedDate"
Description: "The date this contact was last updated"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/lastUpdatedDate"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2020-07-20"
* ^publisher = "HL7 New Zealand"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "admin@hl7.org.nz"
* ^contact[0].telecom[0].use = #work
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* ^copyright = "HL7 New Zealand© 2020+; Licensed Under Creative Commons No Rights Reserved."
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* value[x] only boolean

