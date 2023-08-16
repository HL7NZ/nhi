


### Match Request

```
{
  "resourceType" : "Parameters",
  "id" : "Match",
  "parameter" : [
    {
      "name" : "resource",
      "resource" : {
        "resourceType" : "Patient",
        "name" : [
          {
            "family" : "Franks",
            "given" : [
              "John"
            ]
          }
        ],
        "gender" : "male",
        "birthDate" : "2000-07-29"
      }
    },
    {
      "name" : "count",
      "valueInteger" : 10
    },
    {
      "name" : "onlyCertainMatches",
      "valueBoolean" : false
    }
  ]
}
```

### Match Response

```
{
    "resourceType": "Bundle",
    "type": "searchset",
    "entry": [
        {
            "resource": {
                "resourceType": "Patient",
                "id": "ZAM9340",
                "meta": {
                    "versionId": "3163594",
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
                    ]
                },
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
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/dhb",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/dhb-code",
                                    "version": "1.0.0",
                                    "code": "G00030-C",
                                    "display": "Taranaki District Health Board"
                                }
                            ],
                            "text": "Taranaki District Health Board"
                        }
                    }
                ],
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nhi-id",
                        "value": "ZAM9340",
                        "assigner": {
                            "reference": "Organization/G00001-G"
                        }
                    }
                ],
                "name": [
                    {
                        "id": "10",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "TEST-AQURE",
                        "given": [
                            "ROBERT",
                            "WILLIAMS"
                        ]
                    },
                    {
                        "id": "9",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": false
                            }
                        ],
                        "family": "TEST-AQURE",
                        "given": [
                            "ROBERT"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "1985-06-15",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "HL7",
                                        "display": "HL7 applied"
                                    }
                                ],
                                "text": "HL7 applied"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "id": "16",
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id",
                                "valueString": "2145913"
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "1664",
                                            "display": "Whenuakura"
                                        }
                                    ],
                                    "text": "Whenuakura"
                                }
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "150 Patea Road",
                            "RD 1"
                        ],
                        "city": "Patea",
                        "postalCode": "4597",
                        "country": "NZ"
                    }
                ]
            },
            "search": {
                "score": 128.0
            }
        },
        {
            "resource": {
                "resourceType": "Patient",
                "id": "ZAM9889",
                "meta": {
                    "versionId": "2829872",
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
                    ]
                },
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
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/dhb",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/dhb-code",
                                    "version": "1.0.0",
                                    "code": "G00011-K",
                                    "display": "Auckland District Health Board"
                                }
                            ],
                            "text": "Auckland District Health Board"
                        }
                    }
                ],
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nhi-id",
                        "value": "ZAM9889",
                        "assigner": {
                            "reference": "Organization/G00001-G"
                        }
                    }
                ],
                "name": [
                    {
                        "id": "5",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "TEST-AQURE",
                        "given": [
                            "ROBERT"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "1985-06-15",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "HL7",
                                        "display": "HL7 applied"
                                    }
                                ],
                                "text": "HL7 applied"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "id": "1",
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id",
                                "valueString": "1402098"
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "0470",
                                            "display": "Hillsborough West"
                                        }
                                    ],
                                    "text": "Hillsborough West"
                                }
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/suburb",
                                "valueString": "Three Kings"
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "24 Warren Avenue"
                        ],
                        "city": "Auckland",
                        "country": "NZ"
                    }
                ]
            },
            "search": {
                "score": 128.0
            }
        },
        {
            "resource": {
                "resourceType": "Patient",
                "id": "ZAW2441",
                "meta": {
                    "versionId": "2862398",
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
                    ]
                },
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
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/dhb",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/dhb-code",
                                    "version": "1.0.0",
                                    "code": "G00011-K",
                                    "display": "Auckland District Health Board"
                                }
                            ],
                            "text": "Auckland District Health Board"
                        }
                    }
                ],
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nhi-id",
                        "value": "ZAW2441",
                        "assigner": {
                            "reference": "Organization/G00001-G"
                        }
                    }
                ],
                "name": [
                    {
                        "id": "5",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "Test",
                        "given": [
                            "Robert"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "1985-04-15",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "HL7",
                                        "display": "HL7 applied"
                                    }
                                ],
                                "text": "HL7 applied"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "id": "1",
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id",
                                "valueString": "2985246"
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "0468",
                                            "display": "Three Kings"
                                        }
                                    ],
                                    "text": "Three Kings"
                                }
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/suburb",
                                "valueString": "Three Kings"
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "12 Three Kings Grove"
                        ],
                        "city": "Auckland",
                        "country": "NZ"
                    }
                ]
            },
            "search": {
                "score": 106.0
            }
        },
        {
            "resource": {
                "resourceType": "Patient",
                "id": "ZDB9896",
                "meta": {
                    "versionId": "3055909",
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
                    ]
                },
                "extension": [
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/ethnic-group-level-4-code",
                                    "version": "2.0",
                                    "code": "44499",
                                    "display": "Asian nec"
                                }
                            ],
                            "text": "Asian nec"
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
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/dhb",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/dhb-code",
                                    "version": "1.0.0",
                                    "code": "G00011-K",
                                    "display": "Auckland District Health Board"
                                }
                            ],
                            "text": "Auckland District Health Board"
                        }
                    }
                ],
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nhi-id",
                        "value": "ZDB9896",
                        "assigner": {
                            "reference": "Organization/G00001-G"
                        }
                    }
                ],
                "name": [
                    {
                        "id": "5",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "Testcpu",
                        "given": [
                            "Robert"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "1985-06-15",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "HL7",
                                        "display": "HL7 applied"
                                    }
                                ],
                                "text": "HL7 applied"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "id": "9",
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id",
                                "valueString": "3392586"
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "0482",
                                            "display": "Penrose"
                                        }
                                    ],
                                    "text": "Penrose"
                                }
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/suburb",
                                "valueString": "Penrose"
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "Level 1",
                            "585 Great South Road"
                        ],
                        "city": "Auckland",
                        "postalCode": "1061",
                        "country": "NZ"
                    }
                ]
            },
            "search": {
                "score": 100.0
            }
        },
        {
            "resource": {
                "resourceType": "Patient",
                "id": "ZDD7487",
                "meta": {
                    "versionId": "3060392",
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
                    ]
                },
                "extension": [
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/ethnic-group-level-4-code",
                                    "version": "2.0",
                                    "code": "53199",
                                    "display": "African nec"
                                }
                            ],
                            "text": "African nec"
                        }
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/ethnic-group-level-4-code",
                                    "version": "2.0",
                                    "code": "36111",
                                    "display": "Fijian"
                                }
                            ],
                            "text": "Fijian"
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
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/dhb",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/dhb-code",
                                    "version": "1.0.0",
                                    "code": "G00011-K",
                                    "display": "Auckland District Health Board"
                                }
                            ],
                            "text": "Auckland District Health Board"
                        }
                    }
                ],
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nhi-id",
                        "value": "ZDD7487",
                        "assigner": {
                            "reference": "Organization/G00001-G"
                        }
                    }
                ],
                "name": [
                    {
                        "id": "13",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "TESTRCP",
                        "given": [
                            "ROBERT"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "1985-06-15",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "HL7",
                                        "display": "HL7 applied"
                                    }
                                ],
                                "text": "HL7 applied"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "id": "12",
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id",
                                "valueString": "3392587"
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "0482",
                                            "display": "Penrose"
                                        }
                                    ],
                                    "text": "Penrose"
                                }
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/suburb",
                                "valueString": "Penrose"
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "Level 2",
                            "585 Great South Road"
                        ],
                        "city": "Auckland",
                        "postalCode": "1061",
                        "country": "NZ"
                    }
                ]
            },
            "search": {
                "score": 100.0
            }
        },
        {
            "resource": {
                "resourceType": "Patient",
                "id": "ZDB5068",
                "meta": {
                    "versionId": "3049170",
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
                    ]
                },
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
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/dhb",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/dhb-code",
                                    "version": "1.0.0",
                                    "code": "G00013-C",
                                    "display": "Waitemata District Health Board"
                                }
                            ],
                            "text": "Waitemata District Health Board"
                        }
                    }
                ],
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nhi-id",
                        "value": "ZDB5068",
                        "assigner": {
                            "reference": "Organization/G00001-G"
                        }
                    }
                ],
                "name": [
                    {
                        "id": "5",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "Testrg",
                        "given": [
                            "Robert"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "1985-06-15",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "HL7",
                                        "display": "HL7 applied"
                                    }
                                ],
                                "text": "HL7 applied"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "id": "10",
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id",
                                "valueString": "562157"
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "0257",
                                            "display": "Glen Eden East"
                                        }
                                    ],
                                    "text": "Glen Eden East"
                                }
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/suburb",
                                "valueString": "Glen Eden"
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "16 Pleasant Road"
                        ],
                        "city": "Auckland",
                        "country": "NZ"
                    }
                ]
            },
            "search": {
                "score": 100.0
            }
        },
        {
            "resource": {
                "resourceType": "Patient",
                "id": "ZBV2033",
                "meta": {
                    "versionId": "2949853",
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
                    ]
                },
                "extension": [
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/ethnic-group-level-4-code",
                                    "version": "2.0",
                                    "code": "44499",
                                    "display": "Asian nec"
                                }
                            ],
                            "text": "Asian nec"
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
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/dhb",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/dhb-code",
                                    "version": "1.0.0",
                                    "code": "G00011-K",
                                    "display": "Auckland District Health Board"
                                }
                            ],
                            "text": "Auckland District Health Board"
                        }
                    }
                ],
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nhi-id",
                        "value": "ZBV2033",
                        "assigner": {
                            "reference": "Organization/G00001-G"
                        }
                    }
                ],
                "name": [
                    {
                        "id": "5",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "Testepa",
                        "given": [
                            "Robert"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "1985-06-15",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "HL7",
                                        "display": "HL7 applied"
                                    }
                                ],
                                "text": "HL7 applied"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "id": "1",
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id",
                                "valueString": "3392588"
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "0482",
                                            "display": "Penrose"
                                        }
                                    ],
                                    "text": "Penrose"
                                }
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/suburb",
                                "valueString": "Penrose"
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "Level 3",
                            "585 Great South Road"
                        ],
                        "city": "Auckland",
                        "postalCode": "1061",
                        "country": "NZ"
                    }
                ]
            },
            "search": {
                "score": 100.0
            }
        },
        {
            "resource": {
                "resourceType": "Patient",
                "id": "ZDB4517",
                "meta": {
                    "versionId": "3048966",
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
                    ]
                },
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
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/dhb",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/dhb-code",
                                    "version": "1.0.0",
                                    "code": "G00011-K",
                                    "display": "Auckland District Health Board"
                                }
                            ],
                            "text": "Auckland District Health Board"
                        }
                    }
                ],
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nhi-id",
                        "value": "ZDB4517",
                        "assigner": {
                            "reference": "Organization/G00001-G"
                        }
                    }
                ],
                "name": [
                    {
                        "id": "5",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "TestTrg",
                        "given": [
                            "Robert"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "1985-06-15",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "HL7",
                                        "display": "HL7 applied"
                                    }
                                ],
                                "text": "HL7 applied"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "id": "1",
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id",
                                "valueString": "3392587"
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "0482",
                                            "display": "Penrose"
                                        }
                                    ],
                                    "text": "Penrose"
                                }
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/suburb",
                                "valueString": "Penrose"
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "Level 2",
                            "585 Great South Road"
                        ],
                        "city": "Auckland",
                        "country": "NZ"
                    }
                ]
            },
            "search": {
                "score": 100.0
            }
        },
        {
            "resource": {
                "resourceType": "Patient",
                "id": "ZCL9955",
                "meta": {
                    "versionId": "3011901",
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
                    ]
                },
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
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/dhb",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/dhb-code",
                                    "version": "1.0.0",
                                    "code": "G00011-K",
                                    "display": "Auckland District Health Board"
                                }
                            ],
                            "text": "Auckland District Health Board"
                        }
                    }
                ],
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nhi-id",
                        "value": "ZCL9955",
                        "assigner": {
                            "reference": "Organization/G00001-G"
                        }
                    }
                ],
                "name": [
                    {
                        "id": "5",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "TestSSIP",
                        "given": [
                            "Roberta"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "1985-06-15",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "HL7",
                                        "display": "HL7 applied"
                                    }
                                ],
                                "text": "HL7 applied"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "id": "1",
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id",
                                "valueString": "1449331"
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "0502",
                                            "display": "Eden Terrace"
                                        }
                                    ],
                                    "text": "Eden Terrace"
                                }
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/suburb",
                                "valueString": "Grafton"
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "15 Mount Eden Road"
                        ],
                        "city": "Auckland",
                        "country": "NZ"
                    }
                ]
            },
            "search": {
                "score": 92.0
            }
        },
        {
            "resource": {
                "resourceType": "Patient",
                "id": "ZBU4111",
                "meta": {
                    "versionId": "2945583",
                    "profile": [
                        "http://hl7.org.nz/fhir/StructureDefinition/NhiPatient"
                    ]
                },
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
                    },
                    {
                        "url": "http://hl7.org.nz/fhir/StructureDefinition/dhb",
                        "valueCodeableConcept": {
                            "coding": [
                                {
                                    "system": "https://standards.digital.health.nz/ns/dhb-code",
                                    "version": "1.0.0",
                                    "code": "G00011-K",
                                    "display": "Auckland District Health Board"
                                }
                            ],
                            "text": "Auckland District Health Board"
                        }
                    }
                ],
                "identifier": [
                    {
                        "use": "official",
                        "system": "https://standards.digital.health.nz/ns/nhi-id",
                        "value": "ZBU4111",
                        "assigner": {
                            "reference": "Organization/G00001-G"
                        }
                    }
                ],
                "name": [
                    {
                        "id": "5",
                        "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred",
                                "valueBoolean": true
                            }
                        ],
                        "family": "TestMosq",
                        "given": [
                            "Robert"
                        ]
                    }
                ],
                "gender": "male",
                "birthDate": "1985-04-15",
                "_birthDate": {
                    "extension": [
                        {
                            "url": "http://hl7.org.nz/fhir/StructureDefinition/information-source",
                            "valueCodeableConcept": {
                                "coding": [
                                    {
                                        "system": "https://standards.digital.health.nz/ns/information-source-code",
                                        "version": "1.0.0",
                                        "code": "HL7",
                                        "display": "HL7 applied"
                                    }
                                ],
                                "text": "HL7 applied"
                            }
                        }
                    ]
                },
                "address": [
                    {
                        "id": "1",
                        "extension": [
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/nz-address-id",
                                "valueString": "349728"
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/domicile-code",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "https://standards.digital.health.nz/ns/domicile-code",
                                            "code": "0502",
                                            "display": "Eden Terrace"
                                        }
                                    ],
                                    "text": "Eden Terrace"
                                }
                            },
                            {
                                "url": "http://hl7.org.nz/fhir/StructureDefinition/suburb",
                                "valueString": "Grafton"
                            }
                        ],
                        "use": "home",
                        "type": "physical",
                        "line": [
                            "25 Mount Eden Road"
                        ],
                        "city": "Auckland",
                        "country": "NZ"
                    }
                ]
            },
            "search": {
                "score": 81.0
            }
        }
    ]
}
```
