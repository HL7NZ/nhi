

### Birthdate definitions
* **Registered birthdate Status Definition**
  * A Registered birthdate is a date of birth which has been verified by a Government Agency
  * This is a source of:
    *  BREG - This code is added only after verification via MOH/DIA birth register matching

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
    * NZDL - NZ Driver Licence 

* **Unverified birthdate Status Definition**
  * A Unverified birthdate is a birthdate for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the birthdate
  * This would be a. source is one of:
    * NPRF - No Proof Information provided (no proof) by patient/whanau, 
    * OTHR - Other official document
    * HL7  - Data has been applied via HL7 message
    * MIGR - From the legacy NHI System with no known external source

* **Partial DOB Definition**
  * When assessing data against rules, a partial date of birth  will be interpreted as follows: 
    * YYYYMM - the first day of the specified month in the year of birth (e.g  July 2010 is interpreted as 1 July 2010); 
    * YYYY - 1 January in the specified year of Birth (e.g. 2010 is interpreted as 1 January 2010)"


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


### NZ Citizenship definitions

* **Registered NZ Citizenship Status Definition**
  * A Registered NZ Citizenship status is a patient who holds NZ Citizenship and the citizenship status has been verified by a Government Agency.
  * This has only been available sinse 2013
  * This is a source of:
    * DIA - DIA data share - The code is added only after DHB or MOH/DIA data matching

* **Verified NZ Citizenship Status Definition**
  * A Verified NZ Citizenship Status is a patient who holds NZ Citizenship for which acceptable documentary evidence has been sighted by the person recording the NZ Citizenship status
  * This is a source of:
    * PPRT - Passport,
    * NZCT - NZ Citizenship Certificate,
    * BRCT - BRCT - Birth Certificate

* **Unverified NZ Citizenship Status Definition**
  * A Unverified NZ Citizenship status is a patient who states they hold NZ Citizenship, for which either no proof, or unacceptable documentary evidence, has been sighted by the person recording the NZ Citizenship status
  * This is a source of
    * NPRF - Proof not Sighted

* **Derived NZ Citizenship status Definition**
  * A Derived NZ Citizenship Status is a patient who was born in New Zealand prior to 1 January 2006

* **Non Citizen NZ Citizenship status Definition**
  * A Non Citizen NZ Citizenship status is a patient who states they do not hold NZ citizenship, with or without documentary evidence

* **Unknown NZ Citizenship Status Definition**
  * An Unknown NZ Citizenship status is a patient who is unable or unwilling to provide any information about their NZ Citizenship status



### Birthplace definitions

* **Registered birthplace definition**
  * A Registered birthplace is either a place of birth and country of birth, or a country of birth only, which has been verified by a Government Agency
  * This would be a source of:
    * BREG - Has been confirmed with a match to the Birth Register

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
  * This would be a source of:
    * NPRF - No Proof Information provided (no proof) by patient/whanau, 
    * OTHR - Other official document



### Deceased date definitions

* **Registered Deceased date Status Definition**
  * A Registered deceased date is a Deceased date which has been verified by a Government Agency
  * This would be a source of:
    * DREG - Has been confirmed with a match to the Death Register

* **Verified Deceased date status Definition**
  * A verified deceased date is a deceased date for a death taking place in New Zealand for which acceptable documentary evidence has been sighted, or for an overseas death that has been notified by an official overseas source
  * This would be a source of:
    *  MCCOD   - Medical Certificate Cause of Death
    *  CORONER - Coroner Notification
    *  OSEAOFF - Death Overseas Official

* **Unverifiable Deceased date status Definition**
  * An unverifiable deceased date is a deceased date for a death that has been notified by a non official source or that has taken place outside New Zealand, which will not appear on the death register
  * This would be a source of:
    * OSEA - Overseas (i.e. has been notified by a third party),
    * NPRF - No Proof Information provided (no proof) by patient/whanau,
    * HL7  - Data has been applied via HL7 message
    * MIGR - From the legacy NHI System with no known external source

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




### Name Definitions

* **Duplicate Name Definition**
  * A Name is a duplicate name for a given NHI number if the 'Given Name', 'Other Given Names', and 'Family Name' match the values for an existing name for that NHI.
  * Concatenated names are included as duplicates.
  * Duplicates are case insensitive (mark Fraser and Mark Fraser are considered duplicates).
  * Non alphanumeric characters are treated as if they don’t exist.

* **Mononym**
  * Mononyms on the NHI confirm to the [Person name mandated standard](https://data.govt.nz/toolkit/data-standards/mandated-standards-register/person-name-standard) which reference the [NZ Government OASIS CIQ Name Profile](https://ndhadeliver.natlib.govt.nz/webarchive/20171204083638/https:/ict.cwp.govt.nz/guidance-and-resources/standards-compliance/nz-government-ciq-profiles/).

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
    * NZMC - NZ Marriage Certificate
    * NZCU - NZ Civil Union Certificate
    * NZNC - NZ Name Change Certificate or Deed Poll
    * NZDL - NZ Driver Licence
    * CSC  - Community Services Card


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
