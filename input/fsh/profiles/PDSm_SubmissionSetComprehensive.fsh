Profile: PDSm_SubmissionSetComprehensive
Parent: IHE.MHD.Comprehensive.SubmissionSet
Id: PDSmSubmissionSetComprehensive
Title: "PDSm_SubmissionSetComprehensive"
Description: "Profil spécifique dérivé du profil IHE MHD v4.0.1 « ComprehensiveSubmissionSet  » créé pour le volet ANS \"Partage de documents de santé en mobilité\" ; ce profil concerne le lot de soumission."
* ^date = "2021-07-30"
* ^publisher = "ANS"
* contained 1..
* contained only $practitioner-rass or $organization-rass or Patient or $practitionerRole-organizationalRole-rass or Device or $practitionerRole-professionalRole-rass //FrPatient
* extension 2..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension[designationType] ^sliceName = "designationType"
* extension[designationType].value[x] from $JDV-J03-XdsContentTypeCode-CISIS (preferred)
* extension[designationType].value[x] ^definition = "Les valeurs possibles doivent provenir d’une des terminologies de référence suivantes :\r\n- TRE_A00-ProducteurDocNonPS, OID : 1.2.250.1.213.1.1.4.6\r\n- TRE_R209-TypeActivite, OID : 1.2.250.1.213.2.2\r\n- TRE_R02-SecteurActivite, OID : 1.2.250.1.71.4.2.4\r\nLes valeurs possibles peuvent être restreintes en fonction du jeu de valeurs correspondant mis à disposition par le projet (exemple : JDV_J59-ContentTypeCode-DMP)\r\nEn l’absence de spécifications complémentaires, le jeu de valeurs JDV_J03-XdsContentTypeCode-CISIS peut être utilisé."
* extension[designationType].value[x] ^binding.description = "XDS contentTypeCode CI-SIS"
* extension[intendedRecipient] 0..0
* extension contains
    PDSm_IsArchived named isArchived 0..1 and
    PDSm_intendedRecipient named PDSm_intendedRecipient 0..*
* extension[intendedRecipient].value[x] only Reference($organization-rass or $practitioner-rass)
* extension[intendedRecipient].value[x] ^type.aggregation = #contained
//* extension[PDSm_intendedRecipient] only PDSm_intendedRecipient
* extension[PDSm_intendedRecipient] ^sliceName = "PDSm_intendedRecipient"
* extension[PDSm_intendedRecipient].value[x] only Reference
* extension[PDSm_intendedRecipient].value[x] ^type.aggregation = #contained
//* subject only Reference(FrPatient)
* subject ^type.aggregation = #contained
* source 1..
* source only Reference($practitionerRole-organizationalRole-rass or Device or Patient) //FrPatient
* source ^definition = "Un lot de soumission est obligatoirement associé à un auteur. Si l’attribut “ihe-authorOrg” n’est pas renseigné, autrement dit si l’auteur est une personne physique ou un dispositif, la cardinalité est contrainte à [1..1]."
* source.extension ^slicing.discriminator.type = #value
* source.extension ^slicing.discriminator.path = "url"
* source.extension ^slicing.rules = #open
* source.extension ^min = 0
* source.extension[authorOrg] ^sliceName = "authorOrg"
* source.extension[authorOrg] ^definition = "Un lot de soumission est obligatoirement associé à un auteur. Si l’attribut “source” n’est pas renseigné, autrement dit si l’auteur est une personne morale, la cardinalité est contrainte à [1..1]."
* source.extension[authorOrg] ^min = 0
* source.extension[authorOrg].value[x] only Reference($organization-rass)
* source.extension[authorOrg].value[x] ^type.aggregation = #contained
* entry.item only Reference(PDSm_ComprehensiveDocumentReference or PDSm_FolderComprehensive)


Extension: PDSm_intendedRecipient
Id: PDSmintendedrecipient
Description: "Représente le destinataire du lot de soumission"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/PDSm_ihe-intended_recipient"
* ^version = "1.0"
* ^date = "2021-07-30"
* ^publisher = "ANS"
* ^context.type = #element
* ^context.expression = "List"
* . ^short = "Représente le destinataire du lot de soumission"
* url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/PDSm_ihe-intended_recipient" (exactly)
* value[x] only Reference($practitionerRole-organizationalRole-rass or $organization-rass)