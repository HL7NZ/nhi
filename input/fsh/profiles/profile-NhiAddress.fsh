
Alias: $notValidatedAddressReason = http://hl7.org.nz/fhir/StructureDefinition/not-validated-address-reason
Alias: $isPrimaryAddress = http://hl7.org.nz/fhir/StructureDefinition/is-primary-address
Alias: $addressDerived = http://hl7.org.nz/fhir/StructureDefinition/nhi-address-derived


Profile:        NhiAddress
Parent:         NzAddress
Id:             NhiAddress
Title:          "NHI Address"
Description:    "Adds additional, NHI specific extensions"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NhiAddress"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* extension contains
    $notValidatedAddressReason named notValidatedAddressReason 0..1 and
    $isPrimaryAddress named isPrimaryAddress 0..1 and 
    $addressDerived named addressDerived 0..1 
    //depCentils 0..1 and
    //depQuintile 0..1 and
    //SAID 0..1 and
    //meshBlock 0..1 



* extension[notValidatedAddressReason] ^short = "The reason an address was not validated"
* extension[isPrimaryAddress] ^short = "If true, this is the primary address"
* extension[addressDerived] ^short = "Elements that are directly derived from the address"