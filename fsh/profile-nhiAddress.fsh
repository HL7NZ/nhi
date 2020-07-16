
Profile:        NhiAddress
Parent:         CommonAddress
Id:             NhiAddress
Title:          "NHI Address"
Description:    "Adds additional, NHI specific extensions"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NhiAddress"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* extension contains
    notValidatedAddressReason 0..1 and
    isPrimaryAddress 0..1 and 
    depCentils 0..1 and
    depQuintile 0..1 and
    SAID 0..1 and
    meshBlock 0..1 

