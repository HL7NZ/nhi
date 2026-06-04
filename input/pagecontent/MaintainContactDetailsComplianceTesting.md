
 <h4>Maintain Contact Details Compliance Tests</h4>
   <br> Use one of the agreed test NHI numbers for all tests unless stated otherwise. 
   <br> For each successful update, retrieve the Patient record and confirm Patient.telecom reflects the change.
   <br><br>
    

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
                <td><strong>Add-Contact-1</strong></td>
                <td>application can add a home phone number</td>
                <td>Use selected NHI. Add contact details: system = phone, use = home, valid phone number, optional verification/shared/private flags.</td>
                <td>Contact detail is added and returned in Patient.telecom.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Add-Contact-2</strong></td>
                <td>application can add a mobile phone number</td>
                <td>Use selected NHI. Add contact details: system = phone, use = mobile, valid mobile number.</td>
                <td>Contact detail is added and returned in Patient.telecom.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Add-Contact-3</strong></td>
                <td>application can add an email address</td>
                <td>Use selected NHI. Add contact details: system = email, use = null, valid email address.</td>
                <td>Contact detail is added and returned in Patient.telecom.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Add-Contact-4</strong></td>
                <td>application can add contact details with optional metadata</td>
                <td>Add valid contact detail with isVerified, isShared, isPrivate and context populated.</td>
                <td>Contact detail and supplied metadata are stored and displayed to the end user.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Replace-Contact-5</strong></td>
                <td>application can replace an existing home phone value</td>
                <td>Patient has active home phone. Replace same contact-id with same system/use and new valid phone value.</td>
                <td>Old contact detail is inactive; new value is active and returned.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Replace-Contact-6</strong></td>
                <td>application can replace an existing mobile phone value</td>
                <td>Patient has active mobile phone. Replace same contact-id with same system/use and new valid phone value.</td>
                <td>Old contact detail is inactive; new value is active and returned.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Replace-Contact-7</strong></td>
                <td>application can replace an existing email value</td>
                <td>Patient has active email. Replace same contact-id with system = email, use = null and new valid email value.</td>
                <td>Old email is inactive; new email is active and returned.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Replace-Contact-8</strong></td>
                <td>application can replace contact context without changing system/use</td>
                <td>Patient has active contact detail. Replace value and/or context while keeping system/use unchanged.</td>
                <td>Replacement succeeds and active contact details are returned.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Remove-Contact-9</strong></td>
                <td>application can remove an active contact detail</td>
                <td>Patient has active contact detail. Remove by valid contact-id.</td>
                <td>Contact detail is made inactive and is no longer returned in Patient.telecom.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Update-Contact-10</strong></td>
                <td>application returns all active contact details after updates</td>
                <td>Patient has home phone, mobile phone and email. Retrieve Patient record.</td>
                <td>Up to one email, one home phone and one mobile phone are returned.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-11</strong></td>
                <td>contact details are returned only on Patient read</td>
                <td>Patient has active contact details. Perform Patient read and Patient $match.</td>
                <td>Contact details are returned on read, not returned in $match.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-1</strong></td>
                <td>application displays an error when patient version is not current</td>
                <td>Two-user update scenario. User 1 retrieves version, User 2 updates contact details, User 1 submits stale version.</td>
                <td>EM02007 version number error.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-2</strong></td>
                <td>application displays an error when NHI is dormant</td>
                <td>Attempt add/replace/remove contact details for dormant NHI.</td>
                <td>EM02004 dormant NHI error.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-3</strong></td>
                <td>application displays an error when mandatory fields are missing</td>
                <td>Omit each mandatory field in turn: nhi, version-id, system, value; for replace/remove also omit contact-id.</td>
                <td>EM07201 missing required field, or contact-id error where applicable.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-4</strong></td>
                <td>application displays an error when adding duplicate active system/use</td>
                <td>Patient already has active home phone, mobile phone or email. Attempt to add another with same system/use.</td>
                <td>EM07222 already exists for this patient.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-5</strong></td>
                <td>application displays an error when email has a use value</td>
                <td>Add or replace with system = email and use = home or mobile.</td>
                <td>EM02403 email should not have a use.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-6</strong></td>
                <td>application displays an error when phone has invalid or missing use</td>
                <td>Add or replace with system = phone and use = null or invalid value.</td>
                <td>EM02404 phone must have use home or mobile.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-7</strong></td>
                <td>application displays an error for invalid phone number</td>
                <td>Add or replace phone with invalid phone value.</td>
                <td>EM02401 invalid phone number.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-8</strong></td>
                <td>application displays an error for invalid email address</td>
                <td>Add or replace email with invalid email value.</td>
                <td>EM02402 invalid email address.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-9</strong></td>
                <td>application displays an error for invalid characters in value</td>
                <td>Add or replace contact value containing invalid characters.</td>
                <td>EM07217 contains invalid text.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-10</strong></td>
                <td>application displays an error for invalid characters in context</td>
                <td>Add or replace contact details with invalid context text.</td>
                <td>EM02405 or EM07217 invalid context characters, depending on operation.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-11</strong></td>
                <td>application displays an error when replacing with invalid/inactive contact-id</td>
                <td>Replace using contact-id that is inactive, invalid, or not found.</td>
                <td>EM07107 contact ID invalid or inactive.</td>
			</tr>
			<tr>
                <td><strong>Maintain-Contact-error-12</strong></td>
                <td>application displays an error when replacing system/use</td>
                <td>Patient has active contact detail. Attempt replace with different system/use.</td>
                <td>EM02407 system and use may not be edited.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-13</strong></td>
                <td>application displays an error when replacing with identical record</td>
                <td>Replace contact detail with all fields unchanged.</td>
                <td>EM02406 record cannot be replaced with identical record.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-14</strong></td>
                <td>application displays an error when removing with invalid/inactive contact-id</td>
                <td>Remove contact details using inactive, invalid, or non-existent contact-id.</td>
                <td>EM07107 contact ID invalid or inactive.</td>
                <td>Mandatory</td>
            </tr>
            <tr>
                <td><strong>Maintain-Contact-error-15</strong></td>
                <td>API gateway rejects invalid boolean values</td>
                <td>Submit non-boolean values for isVerified, isShared or isPrivate.</td>
                <td>Request rejected by API gateway.</td>
                <td>Mandatory</td>
            </tr>            
</table>

			
               