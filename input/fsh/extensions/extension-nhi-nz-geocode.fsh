
Extension: NhiNzGeocode
Id: nhi-nz-geocode
Title: "NHI NZ Geocode"
Description: "Based on http://hl7.org.nz/fhir/StructureDefinition/nz-geocode, but adds an explicit  datam code"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/nhi-nz-geocode"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context[0].type = #element
* ^context[0].expression = "Address"

* extension contains
    latitude 1..1 and
    longitude 1..1 and
    datumCode 0..1 

* extension[latitude] ^definition = "The latitude of thegeocode"
* extension[latitude].value[x] only decimal
* extension[longitude] ^definition = "The longitude of the geocode"
* extension[longitude].value[x] only decimal
* extension[geo-system] ^definition = "The datum used for the lat/long"
* extension[datumCode].value[x] only string