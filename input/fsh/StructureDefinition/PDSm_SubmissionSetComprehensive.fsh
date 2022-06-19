Profile:        PDSm_SubmissionSetComprehensive
Parent:         SubmissionSetComprehensive
Id:             pdsm-submissionsetcomprehensive
Title:          "Lot de soumission"
Description:    "Profil spécifique dérivé du profil IHE MHD v4.0.1 \"ComprehensiveSubmissionSet\" créé pour le volet ANS \"Partage de documents de santé en mobilité\" ; ce profil concerne le lot de soumission."
* contained 1..* // TODO: add resource kind

// TODO : designationType ValueSet binding
* extension[designationType].valueCodeableConcept from DesignationTypeVS (preferred) // fix ValueSet

* extension[intendedRecipient] 0..0

* extension contains IsArchived named IsArchived 0..1

Extension:  IsArchived
Id: is-archived
Title: "Is archived"
Description: "Permet de définir si un lot de soumission est archivé"
* value[x] only boolean