
//extensions defined in NHI
Alias: $notValidatedAddressReason = http://hl7.org.nz/fhir/StructureDefinition/not-validated-address-reason
Alias: $isPrimaryAddress = http://hl7.org.nz/fhir/StructureDefinition/is-primary-address
Alias: $addressDerived = http://hl7.org.nz/fhir/StructureDefinition/nhi-address-derived
Alias: $esamid = http://hl7.org.nz/fhir/StructureDefinition/esam-id

//defined in NZ Base
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $nzGeocode = http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicile-code


Profile:        NhiAddress
Parent:         Address         //was nzaddress
Id:             NhiAddress
Title:          "NHI Address"
Description:    "Adds additional, NHI specific extensions"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NhiAddress"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ



* extension contains
    $notValidatedAddressReason named notValidatedAddressReason 0..1 and
    $isPrimaryAddress named isPrimaryAddress 0..1 and 
    $addressDerived named addressDerived 0..1 and
    $nzGeocode named nz-geocode 0..1 and
    $suburb named suburb 0..1 and
    $buildingName named building-name 0..1 and 
    $domicileCode named domicile-code 0..1 and 
    $esamid named esam-id 0..1

    //depCentils 0..1 and
    //depQuintile 0..1 and
    //SAID 0..1 and
    //meshBlock 0..1 



* extension[notValidatedAddressReason] ^short = "The reason an address was not validated"
* extension[isPrimaryAddress] ^short = "If true, this is the primary address"
* extension[addressDerived] ^short = "Elements that are directly derived from the address"
* extension[nz-geocode] ^short = "A geocode using the NZ specific datum (reference point)"
* extension[nz-geocode].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-geocode" (exactly)
* extension[suburb] ^short = "The suburb part of the address"
* extension[building-name] ^short = "The name of the building"
* extension[domicile-code] ^short = "The domicile code associated with this address"