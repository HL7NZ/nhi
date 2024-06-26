### Create Patient examples

#### Create Patient Request - Non-validated address

```
{
    "resourceType": "Parameters",
    "id": "Patient-create",
    "parameter": [
        {
            "name": "patient",
            "resource": {
                "resourceType": "Patient",
                "extension": [
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/ethnic-group-level-4-code",
                                    "version": "2.0",
                                    "code": "11111",
                                    "display": "New Zealand European"
                                }
                            ],
                            "text": "New Zealand European"
                        }
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship",
                        "extension": [
                            {
                                "url": "source",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/information-source-code",
                                            "version": "1.0.0",
                                            "code": "NZCT",
                                            "display": "NZ Citizenship Certificate"
                                        }
                                    ],
                                    "text": "NZ Citizenship Certificate"
                                }
                            },
                            {
                                "url": "status",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/nz-citizenship-status-code",
                                            "version": "1.1.0",
                                            "code": "yes",
                                            "display": "Yes"
                                        }
                                    ],
                                    "text": "Yes"
                                }
                            }
                        ]
                    }
                ],
                "name": [
                    {
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/information-source-code",
                                            "version": "1.0.0",
                                            "code": "BRCT",
                                            "display": "Birth Certificate"
                                        }
                                    ],
                                    "text": "Birth Certificate"
                                }
                            },
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "Stein",
                        "given": [
                            "Frank",
                            "N"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "1950-05-11",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "BRCT",
                                        "display": "Birth Certificate"
                                    }
                                ],
                                "text": "Birth Certificate"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/not-validated-address-reason",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/address-not-validated-reason-code",
                                            "version": "1.1",
                                            "code": "OTHER",
                                            "display": "Other"
                                        }
                                    ],
                                    "text": "Other"
                                }
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "2077",
                                            "display": "Thorndon - Tinakori Road"
                                        }
                                    ],
                                    "text": "Thorndon - Tinakori Road"
                                }
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "125 Molesworth street"
                        ],
                        "city": "Wellington",
                        "postalCode": "6011"
                    }
                ]
            }
        }
    ]
}
```



#### Create Patient Request - Validated address

```
{
    "resourceType": "Parameters",
    "id": "Patient-create",
    "parameter": [
        {
            "name": "patient",
            "resource": {
                "resourceType": "Patient",
                "extension": [
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/ethnic-group-level-4-code",
                                    "version": "2.0",
                                    "code": "11111",
                                    "display": "New Zealand European"
                                }
                            ],
                            "text": "New Zealand European"
                        }
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-citizenship",
                        "extension": [
                            {
                                "url": "source",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/information-source-code",
                                            "version": "1.0.0",
                                            "code": "NPRF",
                                            "display": "Proof not Sighted"
                                        }
                                    ],
                                    "text": "Proof not Sighted"
                                }
                            },
                            {
                                "url": "status",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/nz-citizenship-status-code",
                                            "version": "1.1.0",
                                            "code": "unknown",
                                            "display": "The citizenship status is unknown"
                                        }
                                    ],
                                    "text": "The citizenship status is unknown"
                                }
                            }
                        ]
                    }
                ],
                "name": [
                    {
                        "id": "1",
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/information-source-code",
                                            "version": "1.0.0",
                                            "code": "NPRF",
                                            "display": "Proof not Sighted"
                                        }
                                    ],
                                    "text": "Proof not Sighted"
                                }
                            },
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "Reichel",
                        "given": [
                            "Albina",
                            "Enrico"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "2023-11-14",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "MIGR",
                                        "display": "Migrated"
                                    }
                                ],
                                "text": "Migrated"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id",
                                "valueString": "1517031"
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "2077",
                                            "display": "Thorndon - Tinakori Road"
                                        }
                                    ]
                                }
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "4C/123 Molesworth Street"
                        ],
                        "city": "Wellington",
                        "postalCode": "6011",
                        "country": "NZ"
                    }
                ]
            }
        }
    ]
}
```
