

### Birthdate definitions
* **Registered birthdate Status Definition**
  * A Registered birthdate is a date of birth which has been verified by a Government Agency
  * This is a source of BREG - This code is added only after verification via MOH/DIA birth register matching

* **Verified birthdate Status Definition**
  * A Verified birthdate is a birthdate for which acceptable documentary evidence has been sighted by the person recording the birthdate
  * This would be birthdate with source which is one of:
    * BRCT - Birth Certificate, 
    * NZCI - NZ Certificate of Identity, 
    * NZCT - NZ Citizenship Certificate, 
    * NZET - NZ Emergency Travel Document, 
    * NZPV - NZ Permanent Resident Visa A New Zealand Permanent Resident Visa (not time bound) issued by Immigration New Zealand, 
    * NZTV - NZ Resident Visa A New Zealand Resident Visa (time bound) issued by Immigration New Zealand, 
    * NZRT - NZ Refugee Travel Document,
    * PPRT - Passport

* **Unverified birthdate Status Definition**
  * A Unverified birthdate is a birthdate for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the birthdate
  * This would be a. source is one of:
    * NPRF - No Proof Information provided (no proof) by patient/whanau, 
    * OTHR - Other official document

* **Partial DOB Definition**
  * When assessing data against rules, a partial date of birth  will be interpreted as follows: 
    * YYYYMM - the first day of the specified month in the year of birth (e.g  July 2010 is interpreted as 1 July 2010); 
    * YYYY - 1 January in the specified year of Birth (e.g. 2010 is interpreted as 1 January 2010)"




### NZ Citizenship definitions

* **Registered NZ Citizenship Status Definition**
  * A Registered NZ Citizenship status is a patient who holds NZ Citizenship and the citizenship status has been verified by a Government Agency.
  * This is a source of DIA (DIA data share - The code is added only after DHB or MOH/DIA data matching).

* **Verified NZ Citizenship Status Definition**
  * A Verified NZ Citizenship Status is a patient who holds NZ Citizenship for which acceptable documentary evidence has been sighted by the person recording the NZ Citizenship status
  * This is a source of:
    * PPRT - Passport,
    * NZCT - NZ Citizenship Certificate,
    * BRCT - BRCT - Birth Certificate

* **Unverified NZ Citizenship Status Definition**
  * A Unverified NZ Citizenship status is a patient who states they hold NZ Citizenship, for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the NZ Citizenship status
  * This is a source of NPRF - Proof not Sighted

* **Derived NZ Citizenship status Definition**
  * A Derived NZ Citizenship Status is a patient who was born in New Zealand prior to 1 January 2006

* **Non Citizen NZ Citizenship status Definition**
  * A Non Citizen NZ Citizenship status is a patient who states they do not hold NZ citizenship, with or without documentary evidence

* **Unknown NZ Citizenship Status Definition**
  * An Unknown NZ Citizenship status is a patient who is unable or unwilling to provide any information about their NZ Citizenship status


<h3>**TBC** - Valid combinations of nz-citizenship and nz-residency status</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th></th>
<th>NZ Citizenship status = yes</th>
<th>NZ Citizenship status = no</th>
<th>NZ Citizenship status = unknown</th></tr>

<tr><td>NZ Residency status = yes</td>
<td>X</td>
<td>OK</td>
<td>X</td></tr>

<tr><td>NZ Residency status = no</td>
<td>OK</td>
<td>OK</td>
<td>OK</td></tr>

<tr><td>NZ Residency status = unknown</td>
<td>X</td>
<td>OK</td>
<td>OK</td></tr>
</table>


### Birthplace definitions

* **Registered birthplace definition**
  * A Registered birthplace is either a place of birth and country of birth, or a country of birth only, which has been verified by a Government Agency
  * This would be a source of BREG - Has been confirmed with a match to the Birth Register

* **Verified birthplace definition**
  * A Verified birthplace is either a place of birth and country of birth, or a country of birth only, for which acceptable documentary evidence has been sighted by the person recording the birthplace
  * This would be a source of:
    * BRCT - Birth Certificate, 
    * NZCI - NZ Certificate of Identity, 
    * NZCT - NZ Citizenship Certificate, 
    * NZET - NZ Emergency Travel Document, 
    * NZPV - NZ Permanent Resident Visa A New Zealand Permanent Resident Visa (not time bound) issued by Immigration New Zealand, 
    * NZTV - NZ Resident Visa A New Zealand Resident Visa (time bound) issued by Immigration New Zealand, 
    * NZRT - NZ Refugee Travel Document,
    * PPRT - Passport

* **Unverified birthplace definition**
  * An Unverified Country of Birth is either a place and country of birth, or a country of birth only, for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the birthplace




### Deceased date definitions

* **Registered Deceased date Status Definition**
  * A Registered deceased date is a Deceased date which has been verified by a Government Agency
  * This would be a Deceased date which has a source of DREG - Has been confirmed with a match to the Death Register

* **Provisional Deceased date status Definition**
  * A Provisional deceased date is an unverified Deceased date for a death taking place in New Zealand
  * This would be a Deceased date which has a source of PROV - Has been recorded, and not yet registered

* **Unverifiable Deceased date status Definition**
  * An unverifiable deceased date is a deceased date for a death taking place outside New Zealand, which will not appear on the death register
  * This would be a deceased date which has a source of OSEA - Overseas (i.e. has been notified by a third party)

* **Partial DOD Definition**
  * When assessing data against rules, a partial date of death will be interpreted as follows: 
    * YYYYMM - the last day of the specified month in the year of death (e.g. July 2010 is interpreted as 31 July 2010); 
    * YYYY - 31 December in the specified year of death (e.g. 2010 is interpreted as 31 December 2010)"



### Ethnicity Definition
* **Acceptable Ethnicity information Definition**
  * A valid set of Ethnicity information:
    * contains at least one, and up to 6, detailed (level four) ethnic groups, AND 
    * each code appears only once in the set (i.e. no duplicate values), AND 
    * contains a maximum of one residual code (9xxxx), AND 
    * does not contain code 96666 (repeated value), AND 
    * does not contain code 98888 (response out of scope)"




### Identity Definitions

* **Identity Confusion Definition**
  * Identity confusion occurs when:
    * The identity information held for one patient is so similar to another patient, that the records may belong to the same patient OR 
    * The identity information held for a given patient is modified in such a way that the old and new identity information could belong to different patients

* **Identity Divergence Definition**
  * When a record is modified to the extent that the patient identity describes a different patient




### Name Definitions

* **Duplicate Name Definition**
  * A Name is a duplicate name for a given NHI number if all name identity attribute values match the values for an existing name for that NHI.
  * Name identity attributes are:
    * Name Prefix (Title), 
    * Given Name, 
    * Other Given Names, 
    * Family Name, 
    
* **Registered Name Definition**
  * A Registered Name is a name which has been verified by a Government Agency
  * This is a source of BREG - Has been confirmed with a match to the Birth Register

* **Verified Name Definition**
  * A Verified Name is a name for which acceptable documentary evidence has been sighted by the person recording the name
  * This is a Name Source of:
    * BRCT - Birth Certificate, 
    * NZCI - NZ Certificate of Identity, 
    * NZCT - NZ Citizenship Certificate, 
    * NZET - NZ Emergency Travel Document,
    * NZPV - NZ Permanent Resident Visa (A New Zealand Permanent Resident Visa (not time bound) issued by Immigration New Zealand), 
    * NZTV - NZ Resident Visa (A New Zealand Resident Visa (time bound) issued by Immigration New Zealand),
    * NZRT - NZ Refugee Travel Document,
    * PPRT - Passport

* **Unverified Name Definition**
  * A Unverified Name is a name for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the name
  * This is a name source of: 
    * NPRF - No Proof Information provided (no proof) by patient/whanau, 
    * OTHR - Other  official document

* **Partial Name Definition**
  * A Partial Name is a name which: 
    * contains only one of: {Given Name; Family Name}, AND 
    * is not Verified AND 
    * is not Registered

* **Legacy Name Definition**
 * A Legacy Name is a name for which the most recent update:was requested via a Legacy HL7 request, OR was the automated database migration process from the Legacy NHI database to the IBM Initiate NHI database
