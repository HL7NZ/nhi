#!/usr/bin/env node

// replace the page.page node in the IG that sushi clobbers
let fs = require('fs');
IGFileName = "./input/ImplementationGuide-hl7.org.nz.nhi.json";
let contents = fs.readFileSync(IGFileName).toString()
let IG = JSON.parse(contents)



IG.definition.page.page = []
IG.definition.page.page.push({nameUrl:"index.html",title:"Home",generation:"markdown"})
IG.definition.page.page.push({nameUrl:"models.html",title:"Models",generation:"markdown"})
IG.definition.page.page.push({nameUrl:"terminologySummary.html",title:"ValueSets",generation:"html"})
IG.definition.page.page.push({nameUrl:"codeSystem.html",title:"CodeSystems",generation:"html"})
IG.definition.page.page.push({nameUrl:"extensionSummary.html",title:"Extensions",generation:"html"})
IG.definition.page.page.push({nameUrl:"downloads.html",title:"Downloads",generation:"markdown"})
IG.definition.page.page.push({nameUrl:"API.html",title:"API",generation:"markdown"})
IG.definition.page.page.push({nameUrl:"notes.html",title:"Implementer Notes",generation:"markdown"})

let PatientLMRef = {reference:{reference:"StructureDefinition/NhiPatientLM"},exampleBoolean:false}
PatientLMRef.name = "Logical Model for Patient"
PatientLMRef.description = "The Logical Model used to capture the data requirements"
addReference(PatientLMRef)

fs.writeFileSync(IGFileName,JSON.stringify(IG));


function addReference(newRef) {
    //is the reference already in the IG (ie if the IGBuilder is being run multiple times)
    for (const ref of IG.definition.resource) {
        if (ref.reference && (ref.reference.reference == newRef.reference.reference)) {
            return
        }
    }
    IG.definition.resource.push(newRef)
}

/**
 * {
                "reference": {
                    "reference": "StructureDefinition/dhb"
                },
                "name": "Dhb",
                "description": "The District Health Board the patient resides in. It is derived from the patient's primary residential address. Not updated directly.",
                "exampleBoolean": false
            },

,
            {
                "reference": {
                    "reference": "StructureDefinition/NhiPatientLM"
                },
                "name": "Logical Model for Patient",
                "description": "Logical Model for Patient (desc)",
                "exampleBoolean": false
            }



 */