### Who can apply for access?

#### To the test environment:
All health providers listed in [Schedule 2 of the Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/) and software vendors will be given access to all the NHI api operations in the HIP Compliance environment for testing and training after completing the on-boarding process described below.


#### To the production environment:
Access to NHI operations is available to all health providers listed in [Schedule 2 of the Health Information Privacy Code](https://privacy.org.nz/privacy-act-2020/codes-of-practice/hipc2020/)


### On-boarding and Implementation

1. To get started, head to [Consumer onboarding, over at the digital services hub](https://www.tewhatuora.govt.nz/health-services-and-programmes/digital-health/digital-services-hub/consumer-onboarding/) You will need to provide information about your organisation, the product you are developing and the API's you want to integrate with.
  * For more information [Have a look at the other resources on the Digital Service Hub](https://www.tewhatuora.govt.nz/health-services-and-programmes/digital-health/digital-services-hub/).
3. Once your onboarding request has been approved, you will be provided with the information to start integration. The integration team will be in touch if further information is required.
  * You will receive your credentials, access token url, provided scopes, and the compliance environment endpoint.
3. Complete your development and testing.
4. Submit the results of the compliance tests by email to the [integration team](mailto:integration@tewhatuora.govt.nz).
5. The integration team will issue a compliance test report. Your application will receive certification to be used in production or additional requirements will need to be met.
  * This can be an iterative process, so please get in touch as needed to discuss the compliance testing process.
6. _Each organisation_ using your application with NHI integrated services must apply individually for access to the production environment (and recieve their own set of credentials) by completing the production form, please email [NHI Access](mailto:nhi_access@health.govt.nz).

* Please allow at least 5 working days for _compliance environment applications_ to be processed.

* Please allow at least 2 weeks for _compliance testing_ to be signed off and returned.

* If _Production credentials_ are required by a large number of organisations accessing your product, please get in touch to discuss options around bulk credential requests and how we can streamline this process.


### Assistance

Please fill in the [General Enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36) if you:
* have a general enquiry,
* require help or have any questions regarding the onboarding process,
* want to add new business functions to an existing application, or
* want to add a new set of credentials to an existing application.


<h3>Business Functions</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption>See below for available business functions - for more information on how these could be used in patient interactions <a href="guidance.html">See the use case guidance page</a> <br /> By using Te Whatu Ora APIs you are accessing personally identifiable information from the NHI which is not directly from the individual concerned. You need to consider your obligations under HIPC principle 2, and we may request to see your privacy impact assessment prior to access to production. </caption>
<tr><th>Business Functions</th>
<th>Description</th>
<th>Comments</th></tr>

<tr><td>Get Patient</td>
<td>Get Patient using an NHI number </td>
<td>Returns a patient resource <a href="getPatient.html">See Get Patient use case</a></td></tr>

<tr><td>Get Patient - Enrolled GP</td>
<td>Get Patient using an NHI number and include the patients enrolled GP in the response</td>
<td>The patient’s enrolled GP information is returned in the patient resource <br />
The source for this is the National Enrolment Service (NES) <br />
NES Business owner approval required <br />
 <a href="getPatient.html">See Get Patient use case</a> <br />
 <a href="StructureDefinition-NhiPatient.html#patients-enrolled-general-practice">See information on Patient’s Enrolled GP</a> </td></tr>

<tr><td>Get Patient - Contact details</td>
<td>Get Patient using an NHI number and include the patient’s contact details in the response</td>
<td>The patient’s contact details are returned in the patient resource. <br />
The source for this is the National Enrolment Service Patient Preferences. <br />
Access to a patient’s contact details in Production will only be granted to Te Whatu Ora business teams that have completed a Privacy Impact Assessment which has been assessed and approved by the Te Whatu Ora privacy team.
Business Owners should progress this in parallel with any application development. Production access to contact details will not be granted unless this step has been completed.<br />
 <a href="getPatient.html">See Get Patient use case</a> <br />
 <a href="StructureDefinition-NhiPatient.html#patients-contact-details">See information on Patient’s Contact details</a> </td></tr>

<tr><td>Search Patient</td>
<td>Search Patient using name, birthdate and other demographics</td>
<td>Returns only the core NHI fields (No enrolled GP or contact details even if the user has the correct permissions. <br /> Returns a patient resource <a href="matchPatient.html">See Match Patient use case</a></td></tr>

<tr><td>Maintain Patient</td>
<td>Update Patient records</td>
<td>Provided on a limited basis to primary and secondary healthcare providers, and health system data quality teams. <br /> Allows access to the following operations:
<ul>
 <li> <a href="updateName.html">Update Name</a> </li>
 <li> <a href="updateAddress.html">Update Address</a> </li>
 <li> <a href="updateIdentity.html">Update Identity</a> </li>
 <li> <a href="updateBirth.html">Update Birth</a> </li>
 <li> <a href="updateEligibility.html">Update Eligibility</a> </li>
</ul>
Compliance will be issued by operation. <br />
For those without access this may be achieved by phoning the Te Whatu Ora contact centre (0800 855 066).</td></tr>

<tr><td>Create Patient</td>
<td> Create Patient records </td>
<td>Provided on a limited basis to primary and secondary healthcare providers. <br />
For those without access this may be achieved by phoning the Te Whatu Ora contact centre (0800 855 066). <br />
<a href="createPatient.html">See Create Patient use case</a></td></tr>

<tr><td>Validate  Patient</td>
<td> Validate Patient using an NHI number and patient demographics </td>
<td><a href="validatePatient.html">See Validate Patient use case</a></td></tr>
</table>
