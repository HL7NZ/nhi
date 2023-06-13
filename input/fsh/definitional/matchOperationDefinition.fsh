Instance: Patient-match
InstanceOf: OperationDefinition
Description: """When an NHI number is not known, a match by demographics can be used to find the patient record. For the patient match service,
the name and birthdate are required at a minimum. Other demographics such as gender, birthplace and address can be used to improve
		the match results. The NHI search uses a probabilistic search and returns results in order of their match score with the highest
		scoring result returned as the first in the bundle. The more match criteria provided, in as complete a form as is known, the more
		accurate the results returned will be. It is better to enter the complete name even if spelling is not accurate, than entering just
		part of the name. \
		 To ask an MPI to match a patient, clients use the &quot;$match&quot; operation, which
           accepts a patient resource. The patient resource submitted to the operation does not
           have to be complete, nor does it need to pass validation (i.e. mandatory fields don't
           need to be populated), but it does have to be a valid instance, as it is used as the reference
           data to match against."""
Usage: #definition

* url = "https://nhi-ig.hip.digital.health.nz/OperationDefinition/Patient-match"
* version = "1.0.0"
* name = "Match"
* title = "Find patient matches using MPI based logic"
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-06-12T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = """A Master Patient Index ([MPI](http://en.wikipedia.org/wiki/Enterprise_master_patient_index)
   ) is a service used to manage patient identification in a context where multiple patient
   databases exist. Healthcare applications and middleware use the MPI to match patients
   between the databases, and to store new patient details as they are encountered. MPIs
   are highly specialized applications, often tailored extensively to the institution's particular
   mix of patients. MPIs can also be run on a regional and national basis.  

To ask an MPI to match a patient, clients use the &quot;$match&quot; operation, which
   accepts a patient resource which may be only partially complete. The data provided is
   interpreted as an MPI input and processed by an algorithm of some kind that uses the data
   to determine the most appropriate matches in the patient set.  Note that different MPI
   matching algorithms have different required inputs. The generic $match operation does
   not specify any particular algorithm, nor a minimum set of information that must be provided
   when asking for an MPI match operation to be performed, but many implementations will
   have a set of minimum information, which may be declared in their definition of the $match
   operation by specifying a profile on the resource parameter, indicating which properties
   are required in the search.  The patient resource submitted to the operation does not
   have to be complete, nor does it need to pass validation (i.e. mandatory fields don't
   need to be populated), but it does have to be a valid instance, as it is used as the reference
   data to match against."""
* affectsState = false
// need a value set for our custom operation names
* code = #"match"
* comment = "The response is a bundle containing a patient record (validate) or records (match). For match the records are ordered from most likely to least likely. If there are no patient matches an empty search set with no error will be returned. All patient records SHALL have a search score from 0 to 1, where 1 is the most certain match, along with  \"match-grade\" that indicates the MPI's position on the match quality."
* resource = #Patient
* system = false
* type = true
* instance = false
* parameter[0].name = #"resource"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Use this to provide an entire set of patient details for the MPI to match against (e.g. POST a patient record to Patient/$match)."
* parameter[=].type = #Patient

* parameter[+].name = #"onlyCertainMatches"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "IWhen set to TRUE = Validate, When set to FALSE = NHI Search"
* parameter[=].type = #boolean

* parameter[+].name = #"count"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #integer
* parameter[=].documentation = """The maximum number of records to return. If no value is provided, the server decides how
     many matches to return. Note that clients should be careful when using this, as it may
     prevent probable - and valid - matches from being returned""" 


* parameter[+].name = #"return"
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Patient
* parameter[=].documentation = "A bundle containing a set of Patient records that represent possible matches, optionally it may also contain an OperationOutcome with further information about the search results (such as warnings or information messages, such as a count of records that were close but eliminated) If the operation was unsuccessful, then an OperationOutcome may be returned along with a BadRequest status Code (e.g. security issue, or insufficient properties in patient fragment - check against profile)" 
* parameter[=].type = #Bundle

