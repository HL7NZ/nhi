Extension: GPPracticeEnrollmentDate
Id: gp-practice-enrollment-date
Description: "The date that the patient was enrolled with their GP Practicce"

* ^context.type = #element
* ^context.expression = "Patient"

* extension 0..0
* value[x] only date


