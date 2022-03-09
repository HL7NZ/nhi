//Alias: $datumCode = http://hl7.org.nz/fhir/StructureDefinition/datum


Extension: NhiNzGeocode
Id: nhi-nz-geocode
Title: "NHI NZ Geocode"
Parent: http://hl7.org.nz/fhir/StructureDefinition/nz-geocode
Description: " Adds an explicit  datum code to nz-geocode"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nhi-nz-geocode"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context[0].type = #element
* ^context[0].expression = "Address"

* extension contains
    datumCode 0..1 
  
* extension[datumCode] ^definition = "The datum used for the lat/long"
* extension[datumCode].value[x] only CodeableConcept
* extension[datumCode].valueCodeableConcept from $datum-vs (preferred)