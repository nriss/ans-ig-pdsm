Profile: PDSm_FolderComprehensive
Parent: IHE.MHD.Comprehensive.Folder
Id: PDSmFolderComprehensive
Title: "PDSm_FolderComprehensive"
Description: "Profil spécifique dérivé du profil IHE MHD v4.0.1 « Comprehensive Folder  » créé pour le volet ANS \"Partage de documents de santé en mobilité\" ; ce profil concerne le classeur"
* ^date = "2021-07-30"
* ^publisher = "ANS"
* contained 1..
//* contained only FrPatient
* contained only Patient
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension[designationType] 1..1
* extension[designationType] ^comment = "Le jeu de valeurs est à définir par le système cible.\r\n\r\nThere can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone."
//* subject only Reference(FrPatient)
* subject ^type.aggregation = #contained
* date 1..
* entry 1..
* entry.item only Reference(PDSm_ComprehensiveDocumentReference)