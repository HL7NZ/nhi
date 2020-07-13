### ValueSets

<div>
Valuesets are selectors of concepts (represented as codes) that are used to indicate preferred values for specific elements in a particular context. The codes are actually defined in a Code System. The profile is used to 'bind' the ValueSet to an element.

A ValueSet can refer to concepts from multiple CodeSystems, and any concept can be references by many ValueSets. 

Ideally (and the case in this guide) the url of the valueSet will 'resolve' - entering it into a browser or REST client will return the ValueSet. 
A common pattern is to have a ValueSet that 'includes' all the codes from a code system.
</div>

<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Url</th><th>CodeSystem Urls</th></tr>
<tr><td width='20%'>Address Not Validated reason</td><td>The reason why the address was not validated</td><td><a href='ValueSet-AddressNotValidatedReason.html'>https://standards.digital.health.nz/fhir/ValueSet/addressnotvalidatedreason</a></td><td><div><a href='CodeSystem-AddressNotValidated.html'>https://standards.digital.health.nz/ns/addressnotvalidatedreason</a></div></td></tr>
<tr><td width='20%'>Iwi</td><td>New Zealand iwi codes</td><td><a href='ValueSet-Iwi.html'>https://standards.digital.health.nz/fhir/ValueSet/iwi</a></td><td><div><a href='CodeSystem-Iwi.html'>https://standards.digital.health.nz/ns/iwi</a></div></td></tr>
<tr><td width='20%'>Patient citizenship status</td><td>Status of citizenship in NZ</td><td><a href='ValueSet-citizenship-status.html'>https://standards.digital.health.nz/fhir/ValueSet/citizenship-status</a></td><td><div><a href='CodeSystem-citizenship-status.html'>https://standards.digital.health.nz/ns/citizenship-status</a></div></td></tr>
<tr><td width='20%'>domicileCode</td><td>domicileCode</td><td><a href='ValueSet-domicile-code.html'>https://standards.digital.health.nz/fhir/ValueSet/domicile-code</a></td><td><div><a href='CodeSystem-domicile-code.html'>https://standards.digital.health.nz/ns/domicile-code</a></div></td></tr>
<tr><td width='20%'>Patient ethnicity</td><td>Level 4 ethnicity codes</td><td><a href='ValueSet-ethnicity.html'>https://standards.digital.health.nz/fhir/ValueSet/ethnic-group-level-4</a></td><td><div><a href='CodeSystem-ethnicityL4.html'>https://standards.digital.health.nz/ns/ethnic-group-level-4</a></div></td></tr>
<tr><td width='20%'>InformationSource</td><td>The source from where the value of this item was sourced</td><td><a href='ValueSet-information-source.html'>https://standards.digital.health.nz/fhir/ValueSet/information-source</a></td><td><div><a href='CodeSystem-information-source.html'>https://standards.digital.health.nz/ns/information-source</a></div></td></tr>
<tr><td width='20%'>NZ Residency status</td><td>Is the person a NZ resident</td><td><a href='ValueSet-nz-residency-status.html'>https://standards.digital.health.nz/fhir/ValueSet/nz-residency-status</a></td><td><div><a href='CodeSystem-nz-residency-status.html'>https://standards.digital.health.nz/ns/nz-residency-status</a></div></td></tr>
</table>
<br/><br/>
### CodeSystems

These are codesystems that have been defined by this guide. They define specific concepts that are included in ValueSets. It is preferabe to use an international code systm such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem has a globally unique url that is used to unambiguously identiy it. The url generally refers to a describtion of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>CodeSystem Url</th></tr>
<tr><td width='20%'>Address Not Validated reason</td><td>The reason why the address was not validated</td><td><a href='CodeSystem-AddressNotValidated.html'>https://standards.digital.health.nz/ns/addressnotvalidatedreason</a></td></tr>
<tr><td width='20%'>Iwi</td><td>New Zealand iwi codes</td><td><a href='CodeSystem-Iwi.html'>https://standards.digital.health.nz/ns/iwi</a></td></tr>
<tr><td width='20%'>Patient citizenship status</td><td>Status of citizenship in NZ</td><td><a href='CodeSystem-citizenship-status.html'>https://standards.digital.health.nz/ns/citizenship-status</a></td></tr>
<tr><td width='20%'>domicileCode</td><td>domicileCode</td><td><a href='CodeSystem-domicile-code.html'>https://standards.digital.health.nz/ns/domicile-code</a></td></tr>
<tr><td width='20%'>Level 4 ethnicity codes</td><td>Level 4 ethnicity codes</td><td><a href='CodeSystem-ethnicityL4.html'>https://standards.digital.health.nz/ns/ethnic-group-level-4</a></td></tr>
<tr><td width='20%'>InformationSource</td><td>All possible sources of information</td><td><a href='CodeSystem-information-source.html'>https://standards.digital.health.nz/ns/information-source</a></td></tr>
<tr><td width='20%'>NZ Residency status</td><td>NZ Residency status</td><td><a href='CodeSystem-nz-residency-status.html'>https://standards.digital.health.nz/ns/nz-residency-status</a></td></tr>