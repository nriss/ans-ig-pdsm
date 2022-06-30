### Introduction
Ce document présente les spécifications techniques du volet "Partage de documents de santé en mobilité". Sa production est basée sur les [Spécifications Fonctionnelles des Echanges du volet Partage de Documents de Santé](https://esante.gouv.fr/volet-partage-de-documents-de-sante) (SFE-PDS) et le profil [MHD](https://profiles.ihe.net/ITI/MHD/index.html) (Mobile access to Health Documents) défini par IHE (Integrating the Healthcare Entreprise).
    
Il s’agit d’un volet de la couche service spécifiant les modalités de partage de documents sans contraindre ces derniers. Les spécifications liées aux documents de santé constituent les volets de la couche métier du CI-SIS.

A noter que la dénomination du volet « Partage de documents de santé en mobilité » n’est pas restrictive. En effet, les standards sous-jacents aux spécifications techniques, par opposition au volet historique « Partage de documents de santé », permettent le déploiement de cas d'usage en mobilité mais ces spécifications peuvent également être mises en œuvre dans d'autres cas d'usage.

### Les flux
Un flux est un échange entre deux systèmes. Des flux ont été identifiés lors d'études métiers et définis, avec partage de ressources FHIR. Pour en savoir davantage, rendez-vous sur la page  <a href="construction_des_flux.html">construction des flux</a>.


| | Nom  | Description |
| ----- | ----- | ----- |
| <a href="flux1.html">Le flux 01</a> | AjoutLotDocument | Pour la demande d’ajout ou de remplacement d’un document au gestionnaire de partage de documents |
| <a href="flux2.html">Le flux 02</a> | ResultatAjoutLotDocument | Pour obtenir le résultat de la demande de modification du dossier |
| <a href="flux3.html">Le flux 03</a> | MiseAJourMetadonneeFiche | Pour la modification de certaines métadonnées du document comme le statut ou le niveau de confidentialité |
| <a href="flux4.html">Le flux 04</a> | ResultatMAJMetadonneeFiche | Pour obtenir le résultat de la demande de mise à jour des métadonnées de la fiche |
| <a href="flux5.html">Le flux 05</a> | RechercheDocument | Pour la recherche de documents à l'aide de critères de recherche |
| <a href="flux6.html">Le flux 06</a> | ResultatRechercheDocument | Pour obtenir le résultat de la recherche de document |
| <a href="flux7.html">Le flux 07</a> | DemandeConsultationDocument | Pour demander la consultation d'un ou de plusieurs document |
| <a href="flux8.html">Le flux 08</a> | ResultatDemandeConsultationDocument | Pour obtenir le résultat de la demande de consultation. |


### Profils
Cet Implementation Guide contient 6 profils :
- 3 profils pour pousser les données dans l'API :  
    - 1) la fiche document [PDSm_ComprehensiveDocumentReference](StructureDefinition-PDSmComprehensiveDocumentReference.html), 
    - 2) le classeur [PDSm_FolderComprehensive](StructureDefinition-PDSmFolderComprehensive.html),
    - 3) le Lot de soumission [PDSm_SubmissionSetComprehensive](StructureDefinition-PDSmSubmissionSetComprehensive.html)
- 1 profil Bundle pour encapsuler l'envoi des documents :
    - [PDSm_ComprehensiveProvideDocumentBundle](StructureDefinition-PDSmComprehensiveProvideDocumentBundle.html)
- 2 profils Bundle pour encapsuler les résultats de recherche :
    - 1) par fiche [PDSm_FindDocumentReferencesComprehensiveResponse](StructureDefinition-PDSmFindDocumentReferencesComprehensiveResponse.html),
    - 2) par lot de soumission [PDSm_FindListsResponse](StructureDefinition-PDSmFindListsResponse.html)