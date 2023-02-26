This is the Implementation Guide for an [HL7&reg; FHIR&copy;](http://hl7.org/fhir/) interface to the New Zealand National Health Index [NHI](https://www.health.govt.nz/our-work/health-identity/national-health-index). It brings together all the artifacts that are necessary to understand and use the NHI FHIR API.

The NHI is made up of two resources:
* [NHIPatient](StructureDefinition-NhiPatient.html), derived from the [HL7 FHIR Patient resource](http://hl7.org/fhir/patient.html).
* [NHIAddress](StructureDefinition-NhiAddress.html), derived from [HL7 FHIR Address data type](http://hl7.org/fhir/R4/datatypes.html#Address).

This guide uses artifacts from [New Zealand Base Implementation Guide.](https://fhir.org.nz/ig/base/index.html)

### NHI FHIR Introduction videos

* [Introduction and overview](./NHIFHIRIG-IntroductionAndOverview.mp4)
* [Important information](./NHIFHIRIG-DeepDive-ImportantInformation.mp4)
* [Use cases](./NHIFHIRIG-DeepDive-UseCases.mp4)
* [Patient Profile 1](./NHIFHIRIG-DeepDive-PatientProfile1.mp4)
* [Patient Profile 2](./NHIFHIRIG-DeepDive-PatintProfile2.mp4)
* [Patient Profile 3](./NHIFHIRIG-DeepDive-PatintProfile3.mp4)


### Organization of the Guide

* **Business view:** The Business context of the NHI

* **Use Cases:**  The expected Use Cases including the FHIR interactions that the NHI supports.

* **Onboarding and Compliance:** Information on the process for onboarding and compliance, and the specific tests for each of the NHI FHIR interactions.

* **API:** Information on the specific features supported by the API.

* **Profiles:** Details of the data elements included in the NHI Patient and NHI Address profiles.

* **Extensions:** List of extensions defined by the guide.

* **Identifiers:** Provides details of the NHI-ID.

* **Terminology:** List of the FHIR terminology artifacts defined within this implementation guide [For other FHIR terminology see the HL7® FHIR® New Zealand Base Implementation Guide](https://fhir.org.nz/ig/base/index.html). Links can be found from each of the artifacts in the patient and address profiles).


* **Artifact Index:**  This is a tab automatically generated during the build of the Implementation Guide, and lists all the FHIR artifacts defined by the guide with a link to the details.

* **Support** Links to the FHIR spec and downloads.

  ​

  ​

  ### Source

  ​	This IG was built from [github](https://github.com/HL7NZ/nhi)  branch: _BRANCH_  commit id: _GIT_COMMIT_ID_

