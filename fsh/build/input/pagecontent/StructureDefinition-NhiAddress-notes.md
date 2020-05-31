### Shorthand description of artifact

<pre>
Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb

Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/buildingName
Alias: $patient-addressDerived = http://hl7.org.nz/fhir/StructureDefinition/patient-addressDerived
Alias: $notValidatedReason = http://hl7.org.nz/fhir/StructureDefinition/notValidatedReason
Alias: $isPrimary = http://hl7.org.nz/fhir/StructureDefinition/address-isPrimary



Profile:        NzAddress
Parent:         Address
Id:             NzAddress
Title:          "NZ Address"
Description:    "Adds 'suburb' to Address for use within New Zealand"


* extension contains
    $suburb named suburb 0..1

Profile:        NhiAddress
Parent:         NzAddress
Id:             NhiAddress
Title:          "NHI Address"
Description:    "Adds additional, NHI specific extensions"




* extension contains
    $buildingName named buildingName 0..1 and   //the name of the building - as it is known locally
    $patient-addressDerived named patient-addressDerived 0..1 and    //a set of data derived from the address
    $notValidatedReason named notValidatedReason 0..1 and
    $isPrimary named isPrimary 0..1
</pre>