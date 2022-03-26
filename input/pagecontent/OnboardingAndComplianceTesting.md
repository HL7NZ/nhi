

### Who can apply for access?

#### To the test environment:

All organisations and software vendors will be given access to the NHI GET **(and SEARCH TBD)** api operations in the NHI sandpit testing environment after completing the on-boarding process described below.


#### To the production environment:

Access to the NHI GET **(and SEARCH TBD)** interactions is available to all providers listed in [Schedule 2 of the Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/)

Organisations with existing NHI Data Access and terms of use agreements will be given access to NHI GET (and SEARCH) under those agreements.

Health providers without a terms of use agreement wanting access to NHI GET **(and SEARCH TBD)** will need to apply to the Ministry of Health. All consumers of the NHI are subject to the Privacy Act 1993 and the Health Information Privacy Code 2020. Privacy impact assessments and security assessments should be completed prior to applying for access to the NHI. The application will be assessed by the Ministry of Health Data Governance team and if granted an NHI Data terms of use agreement must be signed prior to credentials being issued to production.


### On-boarding

1. To apply for access to the NHI test environment email the following forms to integration@health.govt.nz
   a. privacy impact questionnaire  
   b. onboarding questionnaire
   c. access request form
   
   The Ministry will issue credentials for the testing endpoint within **tbd** days of receiving your application.
   
2. Submit the results of the compliance tests below to [integration@health.govt.nz](mailto:integration@health.govt.nz).
   (The Ministry will issue a compliance test report within **tbd** days of receiving your results).

3. Each organisation using an application with NHI integrated services must apply individually for access to the production environment by completing an access request form and email to [integration@health.govt.nz](mailto:integration@health.govt.nz).


### Compliance testing
Provide the following details in a test report and email to [integration@health.govt.nz](mailto:integration@health.govt.nz).

1. Tester details
   a. Organisation Name
   b. Application name and version
   c.	NHI IG Version (New Zealand NHI Implementation Guide 0.10.0 - CI Build (https://0-9-snapshot.d39scuhbqd86l9.amplifyapp.com/index.html)
   d. Test Script version
   e. Testing start date and time and end date and time
   f. Tester name and contact details
   g. List of interactions included in your integration (eg GET Patient)
   
2. For each test supply screen shots of:
   a. the input data as entered in the integrating system (“the system”)
   b. any warnings or error messages presented by the system
   c. the confirmation or result of the request presented by the system 

### Tests

#### NHI Patient GET

