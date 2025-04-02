


<h4>NHI Create Patient tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr>
<td>NHI-Create-Patient-1</td>
<td>Application can create a new patient with the minimum set of patient information </td>
<td>Create a patient with a fictitious identity (this can be done using http://www.fakenamegenerator.com/)
<ul>
 <li> Name
  <ul>
   <li> Given name and family name </li>
   <li> Source - PPRT</li>
  </ul>
 </li>
 <li> Address
  <ul>
   <li> Validated</li>
  </ul>
 </li>
 <li> Date of Birth
 <ul>
  <li> Date</li>
  <li> Source - BRCT</li>
 </ul>
 </li>
 <li> Gender
 <ul>
  <li> other</li>
 </ul>
 </li>
 <li>	Ethnicity
  <ul>
   <li>32100 (Cook Islands Maori) and,</li>
   <li>12948 (South African) and,</li>
   <li>32100 (Cook Islands Maori)</li>
  </ul>
 </li>
 <li> New Zealand Citizenship Status
  <ul>
   <li>Status - yes</li>
   <li>Source - BRCT</li>
  </ul>
 </li>
</ul>
</td>
<td>
<li>Input: Minimum set of patient information can be provided </li>
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: All patient information can be displayed</li></td>
<td>Mandatory</td></tr>

<tr>
<td>NHI-Create-Patient-2</td>
<td>Application can create a new patient with the minimum set of patient information </td>
<td>Create a patient with a fictitious identity
<ul>
 <li> Name
  <ul>
   <li> Family only </li>
   <li> Source NPRF</li>
  </ul>
 </li>
 <li> Address
  <ul>
   <li> Validated</li>
  </ul>
 </li>
 <li> Date of Birth
  <ul>
  <li> Date</li>
  <li> Source - NPRF</li>
 </ul>
</li>
 <li> Gender
 <ul>
  <li> unknown</li>
 </ul>
 </li>
 <li>	Ethnicity - see below </li>
 <li> New Zealand Citizenship Status
  <ul>
   <li>Status - no</li>
   <li>Source - NPRF</li>
  </ul>
 </li>
</ul>
<img style="width:200px; float:none" src="update-core-2.png"/>
</td>
<td>
<li> Input: Minimum set of patient information can be provided </li>
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: All patient information can be displayed</li></td>
<td>Mandatory</td></tr>

<tr>
<td>NHI-Create-Patient-3</td>
<td>Application can create a new patient with the minimum set of patient information </td>
<td>Create a patient with:
<ul>
  <li> Name
  <ul>
   <li> Given, other given and family </li>
   <li> Source NPRF</li>
  </ul>
 </li>
 <li> Address
  <ul>
   <li> Validated</li>
  </ul>
 </li>
 <li> Date of Birth
  <ul>
  <li> Date month and year only</li>
  <li> Source - NPRF</li>
 </ul>
</li>
 <li> Gender
 <ul>
  <li>code - female</li>
  <li>original-text (optional)</li>
 </ul>
 </li>
 <li>	Ethnicity
  <ul>
   <li>97777 (response unidentifiable)</li>
  </ul>
 </li>
 <li> New Zealand Citizenship Status
  <ul>
   <li>Status - unknown	</li>
   <li>Source - NPRF</li>
  </ul>
 </li>
</ul>
Create a fictitious identity (this can be done using http://www.fakenamegenerator.com/)
</td>
<td>
<li>Input: Minimum set of patient information can be provided </li>
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: All patient information can be displayed</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-4</td>
<td>Application can supply birthplace information when creating a patient</td>
<td>Create a patient with the minimum set of patient information and the additional details below
<ul>
 <li>Birthplace
  <ul>
   <li> Country of birth </li>
   <li> Information source </li>
   <li> Place of birth </li>
  </ul>
 </li>
</ul></td>
<td>
<li>Input: Additional identity information can be provided </li>
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: All patient information can be displayed</li></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-5</td>
<td>Application can create a patient with an unvalidated patient address</td>
<td>Create a patient with minimum set of patient information, with an unvalidated patient address <br />
<b>Do all</b>
<ol>
 <li>OSEA</li>
 <li>UKWN</li>
 <li>NFAB</li>
 <li>NOSVC</li>
 <li>OTHER</li>
</ol>
</td>
<td>
<li>Input: All unvalidated address reasons can be provided </li>
<li>Output: New NHI is displayed with minimum dataset</li>
<li>Output: All patient information can be displayed</li></td>
<td>Mandatory</td></tr>
</table>

<h4>NHI Create Patient error tests</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th>
</tr>

<tr><td> NHI-Create-Patient-error-1 <br /> Mandatory information</td>
<td>application will show the correct error when attempting to create a patient with a mandaotory attribute missing</td>
<td>Attempt to create a patient with a piece of mandatory information missing <b> Do all </b>
 <ol>
  <li> Name </li>
  <li> Date of birth </li>
  <li> Gender </li>
  <li> Ethnicity </li>
  <li> NZ Citizenship </li>
  <li> Address </li>
 </ol>
</td>
<td> Error: EM07201 "Patient name is a required field" <br />
Error: EM07201 "Patient Date of birth is a required field" <br />
Error: EM07201 "Patient gender is a required field" <br />
Error: EM07201 "Patient Ethnicity is a required field" <br />
Error: EM07201 "Patient NZ Citizenship is a required field" <br />
Error: EM07201 "Patient Address is a required field" </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-2 <br /> Address</td>
<td>Application will show the correct error when attempting to create a patient with an eSAM validated address where the nz address id does not match the first line of the validated address</td>
<td>
 <ul>
  <li> address-line: 24 Ranglesey Place </li>
  <li> nz-address-id: 1199146 </li>
  <li> address-type: physical</li>
 </ul>
</td>
<td> Error: "address-line must match the espatial value: ..."  </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-3 <br /> Address</td>
<td>Application will show the correct error when attempting to create a patient with the following unvalidated address without a domicile code</td>
<td>
 <ul>
  <li> not-validated-address-reason: NOSVC </li>
  <li> address-type: physical </li>
  <li> address-line-1: 74 Chancellor Street" </li>
  <li> address-suburb: Richmond </li>
  <li> address-city: Christchurch </li>
  <li> address-country-code: NZ </li>
 </ul>
</td>
<td>Error: "Invalid codeset value" <br />
This will be updated in an upcming release - EM02210 - An unvalidated residential address must have a notional domicile code</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-4 <br /> Address</td>
<td>Application will show the correct error when attempting to create a patient with an address with invalid characters</td>
<td>
 <ul>
  <li> not-validated-address-reason: OTHER </li>
  <li> address-type: physical </li>
  <li> address-line-1: 11 L$nnet Street </li>
  <li> address-suburb: Taihape </li>
  <li> address-city: Taihape </li>
  <li> address-domicile-code: 4720 </li>
  <li> address-country-code: NZ </li>
 </ul>
</td>
<td>Error: "Invalid request body"</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-5 <br /> Address</td>
<td>Application will show the correct error when attempting to create a patient with an address that does not contain address line 1 </td>
<td>
 <ul>
  <li> not-validated-address-reason: OTHER </li>
  <li> address-type: physical </li>
  <li> address-line-2: 11 Linnet Street </li>
  <li> address-suburb: Taihape </li>
  <li> address-city: Taihape </li>
  <li> address-domicile-code: 4720 </li>
  <li> address-country-code: NZ </li>
 </ul>
</td>
<td>Error: "Patient address-line-1 is required"</td>
<td>Optional</td></tr>

<tr><td>NHI-Create-Patient-error-6 <br /> Address</td>
<td>Application will show the correct error when attempting to create a patient with an address missing a not validated reason</td>
<td>
 <ul>
  <li> address-type: physical </li>
  <li> address-line-1: 11 Linnet Street </li>
  <li> address-suburb: Taihape </li>
  <li> address-city: Taihape </li>
  <li> address-domicile-code: 4720 </li>
  <li> address-country-code: NZ </li>
 </ul>
</td>
<td>Error: "Address not validated reason is required"</td>
<td>optional</td></tr>

<tr><td>NHI-Create-Patient-error-7 <br /> Name</td>
<td>application can display an error when no family name is present</td>
<td>Attempt to create a patient with no family name
   <ul>
    <li>Name use = nickname</li>
    <li>Source = PPRT</li>
    <li>Don't insert a family name</li>
   </ul></td>
<td>Output: EM02101 - "A Patient name must contain a family name, a preferred name flag and an information source"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-8 <br /> Name</td>
<td>application can display an error when the given or family name contains special characters e.g. # @ % </td>
<td>Attempt to create a patient with a fictitious name (with special character) </td>
<td>Output: "Invalid request body"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-9 <br /> Name</td>
<td>application can display an error when a given or family name begins with a number e.g. 1Smith </td>
<td>Attempt to create a patient with a fictitious name (with a number as the first character) </td>
<td>Output: EM02107 "A Patient’s given and family name must start with a letter of the alphabet or an apostrophe"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-10 <br /> Name</td>
<td>application can display an error when a given or family name contains only whitespace/s </td>
<td>Attempt to create a patient with a name (containing only whitespace) </td>
<td>Output: EM02110 "Each populated Patient Name field must contain at least one letter"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-11 <br /> Name</td>
<td>application can display an error when no information source</td>
<td>Attempt to create a patient with a fictitious name
 <ul>
  <li>Name use = nickname</li>
  <li>source = PPRT</li>
  <li>Don't insert a information-source</li>
 </ul></td>
<td>Output: EM02101 - "A Patient name must contain either a given or family name, a preferred name flag and an information source."</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-12 <br /> Name</td>
<td>application can display an error when an invalid source is provided</td>
<td>Attempt to create a patient with a registered name source
 <ul>
  <li>source = BREG (Birth Register)</li>
 </ul></td>
<td>Output: EM07229 - "The patient name can only be set to a registered value by an authorised agency"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-13 <br /> Name</td>
<td>application can display an error when no preferred-name-flag</td>
<td>Attempt to create a patient with no preferred flag
 <ul>
  <li>Name use = nickname</li>
  <li>source = PPRT</li>
  <li>don't insert a preferred-name flag</li>
 </ul></td>
<td>Output: EM02101 - "A Patient name must contain either a given or family name, a preferred name flag and an information source."</td>
<td>optional</td></tr>

<tr><td>NHI-Create-Patient-error-14 <br /> Name</td>
<td>application can display an error when preferred-name = false</td>
<td>Attempt to create a patient with preferred flag = false
 <ul>
  <li>Name use = nickname</li>
  <li>source = PPRT</li>
  <li>preferred-name = false</li>
 </ul></td>
<td>Output: EM02101 - "A Patient name must contain either a given or family name, a preferred name and an information source."</td>
<td>optional</td></tr>

<tr><td>NHI-Create-Patient-error-15 <br /> Name</td>
<td>application can display an error when a Babyof name is supplied with a use other than 'temp' and a source other than 'NPRF'</td>
<td>Attempt to create a patient with babyof name
   <ul>
    <li> Name use = nickname </li>
    <li> source = PPRT </li>
   </ul></td>
<td>Output: EM07225 - "name-use-extra is conditional on source = NPRF and name use = temp"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-16 <br /> Ethnicity</td>
<td>application can display an error when attempting to create a patient with invalid ethnicity information <br /> contains multiple residual codes (9xxxx)</td>
<td>Create a Patient with the ethnicities below:
 <ul>
   <li> 97777 (response unidentifiable) </li>
   <li> and 99999 (not stated)</li>
 </ul></td>
<td>Output: EM02301 - "A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code" </td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-17 <br /> Ethnicity</td>
<td>application can display an error when attempting to create a patient with invalid ethnicity information <br /> set of supplied ethnicities that includes a duplicate ethnicity</td>
<td>Create a Patient with the ethnicities below:
 <ul>
<li>32100 (Cook Islands Maori) and,</li>
<li>12948 (South African) and,</li>
<li>32100 (Cook Islands Maori)</li>
 </ul></td>
<td>Output: EM02301 - "A Patient must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code" </td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-18 <br /> Gender</td>
<td>application can display an error when attempting to create a patient with a gender-original-text and no gender value</td>
<td>Attempt to create a patient with a gender-original-text (and not gender)</td>
<td>Output: EM07201 - "Is a required field - Patient.gender" </td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-19 <br /> Citizenship</td>
<td>application can display an error when attempting to create a patient with a NZ Citizenship information source without a NZ Citizenship status </td>
<td>Choose an NZ Citizenship information source to supply but do not add NZ Citizenship status </td>
<td>The format of the message is invalid (EM01002)</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-20 <br /> Citizenship</td>
<td>application can display an error when when attempting to create a patient with a registered Citizenship information source </td>
<td>Attempt to create a patient with a citizenship
 <ul>
  <li> Citizenship = yes </li>
  <li> Attempt to add source = DIA </li>
 </ul></td>
<td>Output: EM07229 "Patient NZ Citizenship can only be set to a ‘Registered’ value by an authorised agency"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-21 <br /> Date of birth</td>
<td>application will show the correct error when attempting to create a patient with a bithdate in the future</td>
<td>Date of birth: A future date </td>
<td>EM07212 - Patient Date of birth cannot be a future date</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-22 <br /> Date of birth</td>
<td>application can display an error when when attempting to create a patient with a registered Date of birth information source </td>
<td>Attempt to create a patient with Date of birth source = BREG
 <ul>
    <li> Attempt to add source = BREG </li>
 </ul></td>
<td>Output: EM07229 "Patient Date of birth can only be set to a ‘Registered’ value by an authorised agency"</td>
<td>mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-23 <br /> Birthplace</td>
<td>Application will show the correct error when attempting to create a patient with a place of birth but no country of birth</td>
<td>Place of Birth: London <br />
Do not supply a country of birth </td>
<td>EM07202 - A place of birth must only be populated if a country of birth is populated</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-24 <br /> Birthplace</td>
<td>Application will show the correct error when attempting to create a patient with no information source</td>
<td>
 <ul>
  <li> Place of Birth: Whangarei </li>
  <li> Country of Birth: New Zealand </li>
  <li> Source: Do not add a source</li>
 </ul> </td>
<td>EM07202 - A place of birth must only be populated if a place of birth source is populated</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-error-25 <br /> Birthplace</td>
<td>Application will show the correct error when attempting to create a patient with no information source</td>
<td>
 <ul>
  <li> Source: PPRT</li>
 </ul> </td>
<td>EM07202 - A place of birth source must only be populated if birth locality information is populated</td>
<td>Mandatory</td></tr>
</table>

<div>



</div>

<h4>NHI Create Patient - death date - <i>future scope</i></h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><b>The tests included in this section are future scope and therefore not currently implemented. They are here for interest sake only.</b></caption>
<tr>
<th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th>
</tr>

<tr><td>NHI-Create-Patient-date-death</td>
<td>application can create a patient with a date of death</td>
<td>Create a patient with date of death</td>
<td>
<ul>
 <li>Input: date of death can be included when creating patient</li>
 <li>Output: New NHI is displayed with minimum dataset</li>
 <li>Output: NHI clearly shows patient deceased</li>
 <li> Output: Information source added as: TBC </li>
</ul></td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-death-date-error-1</td>
<td>application will show the correct error when attempting to create a patient with a date of birth after the date of death supplied</td>
<td>
 <ul>
  <li> Date of birth: Todays date </li>
  <li> Date of death = Todays date -1 </li>
 </ul> </td>
<td>EM07215 - Patient Date of Death must be greater than, or equal to Patient Date of Birth</td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-death-date-error-2</td>
<td>application will show the correct error when attempting to create a patient with a date of death in the future</td>
<td>
 <ul>
  <li> Date of death = future date </li>
  <li> Source: TBC </li>
 </ul></td>
<td>EM07212 - Patient Date of Death date cannot be a future date </td>
<td>Mandatory</td></tr>

<tr><td>NHI-Create-Patient-death-date-error-3</td>
<td>application will show the correct error when attempting to create a patient with a date of death with no source</td>
<td>
 <ul>
  <li> Date of death = todays date </li>
  <li> Source: Don't add a source </li>
 </ul> </td>
<td>EM07202 - A date of death must only be populated if a date of death source is populated</td>
<td>Mandatory</td></tr>
</table>
