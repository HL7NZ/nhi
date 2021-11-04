### ValueSets

These are ValueSets that have been defined in this guide for coded elements. 

Each ValueSet resource has a globally unique url (the [Canonical](http://hl7.org/fhir/references.html#canonical) url) that is used to unambiguously identify it. 
This url generally should resolve to the to the FHIR ValueSet resource, though the infrastructure 
to support this is not yet in place. There's a [specific note](http://hl7.org/fhir/valueset.html#ident) in the spec on ValueSet identification.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR.


<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Canonical url</th></tr>
<tr><td width='20%'>Address Not Validated reason</td><td><p>The reason why the address was not validated</p></td><td><a href='ValueSet-AddressNotValidatedReason.html'>https://standards.digital.health.nz/fhir/ValueSet/address-not-validated-reason-code</a></td></tr>
<tr><td width='20%'>Ethnicity of a perrson</td><td><p>Level 4 ethnicity codes</p></td><td><a href='ValueSet-ethnicity.html'>https://standards.digital.health.nz/fhir/ValueSet/ethnic-group-level-4-code</a></td></tr>
<tr><td width='20%'>Gender codes including Indeterminate</td><td><p>Additional sex values for Patient</p></td><td><a href='ValueSet-nz-additional-sex-code.html'>https://standards.digital.health.nz/fhir/ValueSet/nz-additional-sex-code</a></td></tr>
<tr><td width='20%'>InformationSource</td><td><p>The source from where the value of this item was sourced</p></td><td><a href='ValueSet-information-source.html'>https://standards.digital.health.nz/fhir/ValueSet/information-source-code</a></td></tr>
<tr><td width='20%'>Iwi</td><td><p>New Zealand iwi codes</p></td><td><a href='ValueSet-Iwi.html'>https://standards.digital.health.nz/fhir/ValueSet/iwi-code</a></td></tr>
<tr><td width='20%'>NZ Residency status</td><td><p>Is the person a NZ resident</p></td><td><a href='ValueSet-nz-residency-status.html'>https://standards.digital.health.nz/fhir/ValueSet/nz-residency-status-code</a></td></tr>
<tr><td width='20%'>New Zealand citizenship status</td><td><p>Status of citizenship in NZ</p></td><td><a href='ValueSet-nz-citizenship-status.html'>https://standards.digital.health.nz/fhir/ValueSet/nz-citizenship-status-code</a></td></tr>
<tr><td width='20%'>domicileCode</td><td><p>domicileCode</p></td><td><a href='ValueSet-domicile-code.html'>https://standards.digital.health.nz/fhir/ValueSet/domicile-code</a></td></tr>
</table>
<br/><br/>
### CodeSystems

These are code systems that have been defined in this guide. They define specific concepts that are included in ValueSets. It is preferable to use an international code system such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem resource has a globally unique url (the canonical url) that is used to unambiguously identify it. The url generally refers to a description of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>Canonical Url</th></tr>
<tr><td width='20%'>Address Not Validated reason</td><td><p>The reason why the address was not validated</p></td><td><a href='CodeSystem-AddressNotValidated.html'>https://standards.digital.health.nz/ns/address-not-validated-reason-code</a></td></tr>
<tr><td width='20%'>Iwi</td><td><p>New Zealand iwi codes</p></td><td><a href='CodeSystem-Iwi.html'>https://standards.digital.health.nz/ns/iwi-code</a></td></tr>
<tr><td width='20%'>domicileCode</td><td><p>domicileCode</p></td><td><a href='CodeSystem-domicile-code.html'>https://standards.digital.health.nz/ns/domicile-code</a></td></tr>
<tr><td width='20%'>Level 4 ethnicity codes</td><td><p>Level 4 ethnicity codes</p></td><td><a href='CodeSystem-ethnicityL4.html'>https://standards.digital.health.nz/ns/ethnic-group-level-4-code</a></td></tr>
<tr><td width='20%'>InformationSource</td><td><p>All possible sources of information</p></td><td><a href='CodeSystem-information-source.html'>https://standards.digital.health.nz/ns/information-source-code</a></td></tr>
<tr><td width='20%'>Patient citizenship status</td><td><p>Additional sex values for Patient</p></td><td><a href='CodeSystem-nz-additional-sex-code.html'>https://standards.digital.health.nz/ns/nz-additional-sex-code</a></td></tr>
<tr><td width='20%'>New Zealand citizenship status</td><td><p>Status of citizenship in NZ</p></td><td><a href='CodeSystem-nz-citizenship-status.html'>https://standards.digital.health.nz/ns/nz-citizenship-status-code</a></td></tr>
<tr><td width='20%'>NZ Residency status</td><td><p>NZ Residency status</p></td><td><a href='CodeSystem-nz-residency-status.html'>https://standards.digital.health.nz/ns/nz-residency-status-code</a></td></tr>
</table>

### ValueSets defined but not used

<table><tr><th>Url</th></tr>
<tr><td><a href='ValueSet-Iwi.html'>https://standards.digital.health.nz/fhir/ValueSet/iwi-code</a></td></tr>
<tr><td><a href='ValueSet-domicile-code.html'>https://standards.digital.health.nz/fhir/ValueSet/domicile-code</a></td></tr>
<tr><td><a href='ValueSet-ethnicity.html'>https://standards.digital.health.nz/fhir/ValueSet/ethnic-group-level-4-code</a></td></tr>
<tr><td><a href='ValueSet-nz-additional-sex-code.html'>https://standards.digital.health.nz/fhir/ValueSet/nz-additional-sex-code</a></td></tr>
<tr><td><a href='ValueSet-nz-citizenship-status.html'>https://standards.digital.health.nz/fhir/ValueSet/nz-citizenship-status-code</a></td></tr>
</table>