### ValueSets

These are ValueSets that have been defined in this guide for coded elements. 

Each ValueSet resource has a globally unique url (the [Canonical](http://hl7.org/fhir/references.html#canonical) url) that is used to unambiguously identify it. 
This url generally should resolve to the to the FHIR ValueSet resource, though the infrastructure 
to support this is not yet in place. There's a [specific note](http://hl7.org/fhir/valueset.html#ident) in the spec on ValueSet identification.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR.


<table class='table table-bordered table-condensed'>
<tr><th>ValueSet</th><th>Purpose</th><th>Canonical url</th></tr>
<tr><td width='20%'>Address Not Validated reason</td><td><p>The reason why the address was not validated</p></td><td><a href='ValueSet-AddressNotValidatedReason.html'>https://nzhts.digital.health.nz/fhir/ValueSet/address-not-validated-reason-code</a></td></tr>
<tr><td width='20%'>Death date Information Source</td><td><p>The source from which the date of death was obtained</p></td><td><a href='ValueSet-dod-information-source.html'>https://nzhts.digital.health.nz/fhir/ValueSet/dod-information-source-code</a></td></tr>
<tr><td width='20%'>Ethnicity of a person</td><td><p>Codes to record a person&#39;s ethnicity, drawn from <a href="http://aria.stats.govt.nz/aria/#ClassificationView:uri=http://stats.govt.nz/cms/ClassificationVersion/YVqOcFHSlguKkT17">Level 4 of the Ethnicity code system</a></p></td><td><a href='ValueSet-ethnicity.html'>https://nzhts.digital.health.nz/fhir/ValueSet/ethnic-group-level-4-code</a></td></tr>
<tr><td width='20%'>Gender codes including Indeterminate</td><td><p>Additional sex values for Patient</p></td><td><a href='ValueSet-nz-additional-sex-code.html'>https://nzhts.digital.health.nz/fhir/ValueSet/nz-additional-sex-code</a></td></tr>
<tr><td width='20%'>Information Source</td><td><p>The source from where the value of this item was obtained</p></td><td><a href='ValueSet-information-source.html'>https://nzhts.digital.health.nz/fhir/ValueSet/information-source-code</a></td></tr>
<tr><td width='20%'>NZ Citizenship status</td><td><p>Citizenship status</p></td><td><a href='ValueSet-citizenship-status.html'>https://nzhts.digital.health.nz/fhir/ValueSet/nz-citizenship-status-code</a></td></tr>
<tr><td width='20%'>NZ Residency status</td><td><p>Is the person a NZ resident</p></td><td><a href='ValueSet-nz-residency-status.html'>https://nzhts.digital.health.nz/fhir/ValueSet/nz-residency-status-code</a></td></tr>
<tr><td width='20%'>domicileCode</td><td><p>Domicile Code</p></td><td><a href='ValueSet-domicile-code.html'>https://nzhts.digital.health.nz/fhir/ValueSet/domicile-code</a></td></tr>
<tr><td width='20%'>Datum Code</td><td><p>Identifies the coordinate system used to specify points on a map</p></td><td><a href='ValueSet-Datum.htm'>https://nzhts.digital.health.nz/fhir/ValueSet/datum</a></td></tr>
<tr><td width='20%'>Address Use</td><td><p>Uses of the address supported by the NHI</p></td><td><a href='ValueSet-nhi-address-use.html'>https://nzhts.digital.health.nz/fhir/ValueSet/addressUse</a></td></tr>
<tr><td width='20%'>Address Type</td><td><p>Types of address supported by the NHI</p></td><td><a href='ValueSet-nhi-address-type.html'>https://nzhts.digital.health.nz/fhir/ValueSet/addressType</a></td></tr>
<tr><td width='20%'>DHB Code</td><td><p>District Health Board codes</p></td><td><a href='ValueSet-dhb.html'>https://nzhts.digital.health.nz/fhir/ValueSet/dhb-code</a></td></tr>
<tr><td width='20%'>Name Information Source</td><td><p>The source from which the name was obtained</p></td><td><a href='ValueSet-name-information-source.html'>https://nzhts.digital.health.nz/fhir/ValueSet/name-source-code</a></td></tr>
<tr><td width='20%'>Date of Birth Information Source</td><td><p>The source from which the value of the date of birth was obtained</p></td><td><a href='ValueSet-dob-information-source.html'>https://nzhts.digital.health.nz/fhir/ValueSet/date-of-birth-source-code</a></td></tr>
<tr><td width='20%'>NZ Residency Information Source</td><td><p>The source from which the value of the NZ residency information was obtained</p></td><td><a href='ValueSet-nz-residency-information-source.html'>https://nzhts.digital.health.nz/fhir/ValueSet/nz-citizenship-source-code</a></td></tr>
<tr><td width='20%'>Name Prefix codes</td><td><p>Types of name prefixes used by NHI</p></td><td><a href='ValueSet-nhi-name-prefix.html'>https://nzhts.digital.health.nz/fhir/ValueSet/name-prefix-code</a></td></tr>
<tr><td width='20%'>Name Suffix codes</td><td><p>Types of name suffixes used by NHI</p></td><td><a href='ValueSet-nhi-name-suffix.html'>https://nzhts.digital.health.nz/fhir/ValueSet/name-suffix-code</a></td></tr>
<tr><td width='20%'>Country of birth</td><td><p>Country codes for country of birth</p></td><td><a href='ValueSet-country-of-birth.html'>https://nzhts.digital.health.nz/fhir/ValueSet/country-code</a></td></tr>

</table>
<br/><br/>
### CodeSystems

These are code systems that have been defined in this guide. They define specific concepts that are included in ValueSets. It is preferable to use an international code system such as SNOMED, ICD or LOINC - but this is not always possible.

Each CodeSystem resource has a globally unique url (the canonical url) that is used to unambiguously identify it. The url generally refers to a description of the codesystem, rather than to the FHIR CodeSystem resource.

The [FHIR spec](http://hl7.org/fhir/terminology-module.html) has much more detail on the use of Terminology in FHIR

<table class='table table-bordered table-condensed'>
<tr><th>CodeSystem</th><th>Purpose</th><th>Canonical Url</th></tr>
<tr><td width='20%'>Address Not Validated reason</td><td><p>The reason why the address was not validated</p></td><td><a href='CodeSystem-AddressNotValidated.html'>https://standards.digital.health.nz/ns/address-not-validated-reason-code</a></td></tr>
<tr><td width='20%'>NZ Citizenship status</td><td><p>Is this person a NZ Citizen</p></td><td><a href='CodeSystem-citizenship-status.html'>https://standards.digital.health.nz/ns/nz-citizenship-status-code</a></td></tr>
<tr><td width='20%'>domicileCode</td><td><p>Domicile Code</p></td><td><a href='CodeSystem-domicile-code.html'>https://standards.digital.health.nz/ns/domicile-code</a></td></tr>
<tr><td width='20%'>Level 4 ethnicity codes</td><td><p>Codes to record a person’s ethnicity, drawn from Level 4 of the Ethnicity code system 
described <a href="http://aria.stats.govt.nz/aria/#ClassificationView:uri=http://stats.govt.nz/cms/ClassificationVersion/YVqOcFHSlguKkT17">here</a></p></td><td><a href='CodeSystem-ethnicityL4.html'>https://standards.digital.health.nz/ns/ethnic-group-level-4-code</a></td></tr>
<tr><td width='20%'>Information Source</td><td><p>All possible sources of information</p></td><td><a href='CodeSystem-information-source.html'>https://standards.digital.health.nz/ns/information-source-code</a></td></tr>
<tr><td width='20%'>Patient citizenship status</td><td><p>Additional sex values for Patient</p></td><td><a href='CodeSystem-nz-additional-sex-code.html'>https://standards.digital.health.nz/ns/nz-additional-sex-code</a></td></tr>
<tr><td width='20%'>NZ Residency status</td><td><p>NZ Residency status</p></td><td><a href='CodeSystem-nz-residency-status.html'>https://standards.digital.health.nz/ns/nz-residency-status-code</a></td></tr>
</table>