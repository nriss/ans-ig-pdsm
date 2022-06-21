Profile: PDSm_ComprehensiveDocumentReference
Parent: IHE.MHD.Comprehensive.DocumentReference
Id: PDSmComprehensiveDocumentReference
Title: "PDSm_ComprehensiveDocumentReference"
Description: "Profil spécifique dérivé du profil IHE MHD v4.0.1 \"ComprehensiveDocumentReference\" créé pour le volet \"Partage de documents de santé en mobilité\"."
* ^meta.lastUpdated = "2021-10-21T13:35:33.281+00:00"
* ^date = "2021-07-30"
* meta.versionId ^definition = "Elément requis lorsque le flux envoyé correspond à une mise à jour des données d’une fiche."
* contained 1..
* contained only Patient or Device or $practitionerRole-organizationalRole-rass or $organization-rass or $practitionerRole-professionalRole-rass or $practitioner-rass //FrPatient
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains PDSm_IsArchived named isArchived 0..1
* type from $JDV-J07-XdsTypeCode-CISIS (preferred)
* type ^definition = "Les valeurs possibles pour cet élément doivent provenir d’une des terminologies de référence suivantes :\r\n- TRE_A05-TypeDocComplementaireCISIS, OID : 1.2.250.1.213.1.1.4.12\r\n- TRE_A04-TypeDocument-LOINC, OID : 2.16.840.1.113883.6.1\r\n- TRE_A12-NomenclatureASTM, OID : ASTM\r\nLes valeurs possibles peuvent être restreintes en fonction du jeu de valeurs correspondant mis à disposition par le projet (exemple : JDV_J66-TypeCode-DMP).\r\nEn l’absence de spécifications complémentaires, le jeu de valeurs JDV_J07-XdsTypeCode-CISIS peut être utilisé."
* type ^binding.description = "XDS typeCode CI-SIS"
* category from $JDV-J06-XdsClassCode-CISIS (preferred)
* category ^definition = "Les valeurs possibles pour cet élément doivent provenir d’une des terminologies de référence suivantes :\r\n- TRE_A03-ClasseDocument-CISIS, OID : 1.2.250.1.213.1.1.4.1\r\n- TRE_A10-NomenclatureURN, OID : URN\r\nLes valeurs possibles peuvent être restreintes en fonction du jeu de valeurs correspondant mis à disposition par le projet (exemple : JDV_J57-ClassCode-DMP).\r\nEn l’absence de spécifications complémentaires, le jeu de valeurs JDV_J06-XdsClassCode-CISIS peut être utilisé."
* category ^binding.description = "XDS classCode CI-SIS"
//* subject only Reference(FrPatient)
* subject ^type.aggregation = #contained
* author 1..
* author only Reference($practitionerRole-organizationalRole-rass or Device or Patient) //FrPatient
* authenticator 1..
* authenticator only Reference($practitionerRole-organizationalRole-rass or $organization-rass)
* relatesTo ^definition = "Cardinalité contrainte à [1..1] lorsque le flux envoyé correspond au remplacement d’un document."
* securityLabel ^definition = "Les codes pour cet élément doivent provenir du ValueSet spécifié par le standard. Lorsqu’aucun code ne correspond au concept recherché, un code provenant de la terminologie de référence TRE_A07-StatusVisibiliteDocument, OID : 1.2.250.1.213.1.1.4.13 peut être utilisé (cf JDV_J110 : https://mos.esante.gouv.fr/NOS/JDV_J110-StatutVisibiliteDocument-CISIS/FHIR/JDV-J110-StatutVisibiliteDocument-CISIS)."
* content.attachment.language ^definition = "Pour tous les documents produits par les systèmes initiateurs français, le codes est \"fr-FR'."
* content.attachment.size 1..
* content.attachment.hash 1..
* content.attachment.title 1..
* content.format from $JDV-J10-XdsFormatCode-CISIS (preferred)
* content.format ^definition = "Les valeurs possibles pour cet élément doivent provenir d’une des terminologies de référence suivantes :\r\n- TRE_A06-FormatCodeComplementaire, OID : 1.2.250.1.213.1.1.4.2.282\r\n- TRE_A11-IheFormatCode, OID : 1.3.6.1.4.1.19376.1.2.3\r\n- TRE_A09-DICOMuidRegistry, OID : 1.2.840.10008.2.6.1\r\n- TRE_A10-NomenclatureURN, OID : URN\r\nLes valeurs possibles peuvent être restreintes en fonction du jeu de valeurs correspondant mis à disposition par le projet (exemple : JDV_J60-FormatCode-DMP).\r\nEn l’absence de spécifications complémentaires, le jeu de valeurs JDV_J10-XdsFormatCode-CISIS peut être utilisé."
* content.format ^binding.description = "XDS formatCode documents CI-SIS"
* context.event ..1
* context.event ^definition = "- Nomenclatures utilisées :\r\nCCAM pour les actes médicaux (OID=\"\"1.2.250.1.213.2.5\"\");\r\n- CIM-10 pour les diagnostics de pathologie (OID=\"\"2.16.840.1.113883.6.3\"\").\r\n- TRE_A00-ProducteurDocNonPS pour les documents d'expression personnelle du patient.\""
* context.period 1..
* context.period.start 1..
* context.facilityType from $JDV-J02-XdsHealthcareFacilityTypeCode-CISIS (preferred)
* context.facilityType ^definition = "Les valeurs possibles pour cet élément doivent provenir d’une des terminologies de référence suivantes :\r\n- TRE_A00-ProducteurDocNonPS, OID : 1.2.250.1.213.1.1.4.6 (lorsque l’auteur du document est un patient ou un équipement sous sa responsabilité)\r\n- TRE_R02-SecteurActivite, OID : 1.2.250.1.71.4.2.4 (lorsque l’auteur du document est un professionnel ou un équipement sous sa responsabilité)\r\nLes valeurs possibles peuvent être restreintes en fonction du jeu de valeurs correspondant mis à disposition par le projet (exemple : JDV_J61-HealthcareFacilityTypeCode-DMP).\r\nEn l’absence de spécifications complémentaires, le jeu de valeurs JDV_J02-XdsHealthcareFacilityTypeCode-CISIS peut être utilisé."
* context.facilityType ^binding.description = "XDS healthcareFacilityTypeCode CI-SIS"
* context.practiceSetting from $JDV-J04-XdsPracticeSettingCode-CISIS (preferred)
* context.practiceSetting ^definition = "Les valeurs possibles pour cet élément doivent provenir d’une des terminologies de référence suivantes :\r\n- TRE_A00-ProducteurDocNonPS, OID : 1.2.250.1.213.1.1.4.6 (lorsque l’auteur du document est un patient ou un équipement sous sa responsabilité)\r\n- TRE_A01-CadreExercice, OID : 1.2.250.1.213.1.1.4.9 (lorsque l’auteur du document est un professionnel ou un équipement sous sa responsabilité)\r\nLes valeurs possibles peuvent être restreintes en fonction du jeu de valeurs correspondant mis à disposition par le projet (exemple : JDV_J62-PracticeSettingCode-DMP).\r\nEn l’absence de spécifications complémentaires, le jeu de valeurs JDV_J04-XdsPracticeSettingCode-CISIS peut être utilisé."
* context.practiceSetting ^binding.description = "XDS practiceSettingCode CI-SIS"
// * context.sourcePatientInfo only Reference(FrPatient)