//Alias: $suburb = http://hl7.org.nz/fhir/StructureDefinition/suburb
//Alias: $buildingName = http://hl7.org.nz/fhir/StructureDefinition/buildingName
//Alias: $patient-addressDerived = http://hl7.org.nz/fhir/StructureDefinition/patient-addressDerived
/*
Alias: $notValidatedAddressReason = http://hl7.org.nz/fhir/nhi/StructureDefinition/notValidatedAddressReason
Alias: $isPrimaryAddress = http://hl7.org.nz/fhir/nhi/StructureDefinition/isPrimaryAddress
Alias: $nzAddress = http://hl7.org.nz/fhir/StructureDefinition/nzAddress

Alias: $depCentile = http://hl7.org.nz/fhir/nhi/StructureDefinition/depCentile
Alias: $depQuintile = http://hl7.org.nz/fhir/nhi/StructureDefinition/depQuintile

Alias: $meshBlock = http://hl7.org.nz/fhir/nhi/StructureDefinition/meshBlock
Alias: $SAID = http://hl7.org.nz/fhir/nhi/StructureDefinition/SAID
*/

Profile:        NhiAddress
Parent:         CommonAddress
Id:             NhiAddress
Title:          "NHI Address"
Description:    "Adds additional, NHI specific extensions"

* extension contains
    notValidatedAddressReason 0..1 and
    isPrimaryAddress 0..1 and 
    depCentils 0..1 and
    depQuintile 0..1 and
    SAID 0..1 and
    meshBlock 0..1 

/*
    $notValidatedAddressReason named notValidatedAddressReason 0..1 and
    $isPrimaryAddress named isPrimaryAddress 0..1 and 
    $depCentile named depCentils 0..1 and
    $depQuintile named depQuintile 0..1 and
    $SAID named SAID 0..1 and
    $meshBlock named meshBlock 0..1 
*/

//* extension[buildingName].value[x] only string