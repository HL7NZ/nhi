
//extensions defined in NHI
Alias: $notValidatedAddressReason = http://hl7.org.nz/fhir/StructureDefinition/not-validated-address-reason
Alias: $isPrimaryAddress = http://hl7.org.nz/fhir/StructureDefinition/is-primary-address
Alias: $addressDerived = http://hl7.org.nz/fhir/StructureDefinition/nhi-address-derived
Alias: $nzAddressId = http://hl7.org.nz/fhir/StructureDefinition/nz-address-id

//defined in NZ Base
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
Alias: $nhiNZGeocode = http://hl7.org.nz/fhir/StructureDefinition/nhi-nz-geocode
Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/building-name
Alias: $domicileCode = http://hl7.org.nz/fhir/StructureDefinition/domicile-code


Profile:        NhiAddress
Parent:         NzAddress         
Id:             NhiAddress
Title:          "NHI Address"
Description:    "Adds additional, NHI specific extensions"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/NhiAddress"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ



* extension contains
    $notValidatedAddressReason named notValidatedAddressReason 0..1 and
    $isPrimaryAddress named isPrimaryAddress 1..1 and 
    $nzAddressId named nz-address-id 0..1


// type is mandatory
* type 1..1

//excluded
* district 0..0
* state 0..0
* period 0..0

//valueset restrictions
* use from  $nhi-address-use 
* type from  $nhi-address-type
* country from $country-code-vs


* extension[notValidatedAddressReason] ^short = "The reason an address was not validated"
* extension[isPrimaryAddress] ^short = "If true, this is the primary address"
