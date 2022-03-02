ValueSet: AddressNotValidatedReason
Title: "Address Not Validated reason"
Description: "The reason why the address was not validated"
* ^url = https://nzhts.digital.health.nz/fhir/ValueSet/address-not-validated-reason-code

* codes from system $address-not-validated-reason-code
CodeSystem: AddressNotValidated
Title: "Address Not Validated reason"
Description: "The reason why the address was not validated"
* ^url = $nhi-address-not-validated-reason-code

* #OSEA "Overseas address"
* #UKWN "Address unknown"
* #NFAB "No fixed abode"
* #NOSVC "Address service unavailable"
* #OTHER "Other"