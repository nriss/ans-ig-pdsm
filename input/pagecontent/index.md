### Introduction
Ce document présente les spécifications techniques du volet "Partage de documents de santé en mobilité". Sa production est basée sur les [Spécifications Fonctionnelles des Echanges du volet Partage de Documents de Santé](https://esante.gouv.fr/volet-partage-de-documents-de-sante) (SFE-PDS) et le profil [MHD](https://profiles.ihe.net/ITI/MHD/index.html) (Mobile access to Health Documents) défini par IHE (Integrating the Healthcare Entreprise).
    
Il s’agit d’un volet de la couche service spécifiant les modalités de partage de documents sans contraindre ces derniers. Les spécifications liées aux documents de santé constituent les volets de la couche métier du CI-SIS.

A noter que la dénomination du volet « Partage de documents de santé en mobilité » n’est pas restrictive. En effet, les standards sous-jacents aux spécifications techniques, par opposition au volet historique « Partage de documents de santé », permettent le déploiement de cas d'usage en mobilité mais ces spécifications peuvent également être mises en œuvre dans d'autres cas d'usage.


### Lectorat cible 

Ce document s'adresse aux développeurs des interfaces interopérables des systèmes implémentant le partage de documents de santé ou à toute autre personne intervenant dans le processus de mise en place de ces interfaces.

### Standards utilisés

Ces spécifications techniques se basent sur le standard HL7 FHIR Release 4, et plus particulièrement sur les contraintes spécifiées par le profil MHD version 4.0.13. Elles font référence à un certain nombre de ressources du standard ainsi qu'aux spécifications de l'API REST FHIR, basées sur le protocole HTTP. Les syntaxes retenues sont la syntaxe XML et JSON.

Une [mise en équivalence](equivalences.html) entre les acteurs et les flux identifiés dans les SFE-PDS et ceux présentés dans le profil MHD est disponible.
Ce volet met en place l’option du profil MHD « Comprehensive Metadata » qui permet aux acteurs d’échanger des métadonnées complètes répondant aux exigences définies dans le profil XDS. 

#### Ressources FHIR utilisées

Les ressources utilisées et les niveaux de maturité sont les suivants :

* DocumentReference (NM 3)
* List (NM 1)
* Patient (NM N)
* Practitioner (NM 3)
* PractitionerRole (NM 2)
* Organization (NM 3)
* Device (NM 2)
* Binary (NM N)
* Bundle (NM N)


#### Profils utilisés

Des ressources FHIR ont été profilées pour le contexte français et sont utilisés dans le cadre des spécifications techniques du volet « Partage de documents de santé en mobilité ».

Deux sources seront utilisées dans le cadre de ce volet :
* Les profils FHIR « FrPatient », « FrPractitioner » et « FrOrganization » publiés par HL7 France sont utilisés dans ce volet. Les présentes spécifications se basent sur les profils du package [hl7-france-fhir.administrative11.2021.1](https://registry.fhir.org/package/hl7-france-fhir.administrative%7C11.2021.1).

* Dans le cadre de l’annuaire santé, l’ANS met à disposition un service national de publication des données des professionnels et des structures au format FHIR5; deux profils de l’annuaire santé, à savoir « PractitionerRoleProfessionalRoleRASS », « PractitionerRoleOrganizationalRoleRASS » sont utilisés pour le cas d’usage cahier de liaison. Les présentes spécifications se basent sur les profils du package ANS.annuaire.fhir.r4 0.2.06.

Ces spécifications s’appuient également sur les profils définis dans le profil IHE MHD v4.0.17 relatifs à l’option « Comprehensive Metadata ».

Le tableau ci-après spécifie les profils utilisés pour les ressources et types de données mentionnés dans ce document. Les présentes spécifications définissent également des profils propres au présent volet (préfixe PDSm).
Pour les ressources et types de données non mentionnés dans ce tableau, le profil à utiliser est celui défini par HL7 FHIR.

##### Les ressources contenant les informations
| **Ressource** | **Profil** | **Description** |
| ----- | ----- | ----- |
| DocumentReference | [PDSm_ComprehensiveDocumentReference](StructureDefinition-PDSmComprehensiveDocumentReference.html) | Profil défini dans ce volet et héritant de [ComprehensiveDocumentReference](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html) défini dans le profil MHD |
| List | [PDSm_SubmissionSetComprehensive ](StructureDefinition-PDSmSubmissionSetComprehensive.html) | Profil défini dans ce volet et héritant de [SubmissionSetComprehensive](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Comprehensive.SubmissionSet.html) défini dans le profil MHD |
| List | [PDSm_FolderComprehensive](StructureDefinition-PDSmFolderComprehensive.html) | Profil défini dans ce volet et héritant de [FolderComprehensive](https://profiles.ihe.net/ITI/MHD/StructureDefinition-IHE.MHD.Comprehensive.Folder.html) défini dans le profil MHD |
| Patient | [FrPatient](https://simplifier.net/packages/hl7-france-fhir.administrative/10.2021.1/files/424014) | Profil français publié par Interop’Santé, spécifiant les identifiants de patient utilisés en France |
| Practitioner | [FrPractitioner](https://simplifier.net/packages/hl7-france-fhir.administrative/10.2021.1/files/424009) | Profil français publié par Interop’Santé, représentant un professionnel. Il contraint les types d'identifiants du professionnel en France. |
| PractitionerRole <br/> PractitionerRole| [PractitionerRoleOrganizationalRoleRASS](https://simplifier.net/packages/ans.annuaire.fhir.r4/0.2.0/files/421732) <br/> [PractitionerRoleProfessionalRoleRASS](https://simplifier.net/packages/ans.annuaire.fhir.r4/0.2.0/files/421688) | Profil de l’annuaire santé représentant la situation d’exercice et l’exercice professionnel |
| Organization | [FrOrganization](https://simplifier.net/packages/hl7-france-fhir.administrative/10.2021.1/files/424025) | Profil français publié par Interop’Santé représentant une personne morale. Ce profil spécifie les types d'identifiants pour l'organisation en France, et ajoute des extensions françaises.|
| Device | - | La ressource du standard est utilisée. Pas de profil spécifique. |
| Binary | - | La ressource du standard est utilisée. Pas de profil spécifique. |



| **Ressource** | **Profil** | **Description** |
| ----- | ----- | ----- |
| Bundle | [PDSm_ComprehensiveProvideDocumentBundle](StructureDefinition-PDSmComprehensiveProvideDocumentBundle.html) |  Profil défini dans ce volet et héritant de [ComprehensiveProvideDocumentBundle](https://profiles.ihe.net/ITI/MHD/4.0.1/StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.html) défini dans le profil MHD |
| Bundle | [PDSm_FindDocumentReferencesComprehensiveResponse](StructureDefinition-PDSmFindDocumentReferencesComprehensiveResponse.html) | Profil défini dans ce volet et héritant de [FindDocumentReferencesComprehensiveResponse](https://profiles.ihe.net/ITI/MHD/4.0.1/StructureDefinition-IHE.MHD.FindDocumentReferencesComprehensiveResponseMessage.html) défini dans le profil MHD |
| Bundle | [PDSm_FindListsResponse](StructureDefinition-PDSmFindListsResponse.html) | Profil défini dans ce volet et héritant de [FindListsResponse](https://profiles.ihe.net/ITI/MHD/4.0.1/StructureDefinition-IHE.MHD.FindDocumentListsResponseMessage.html) défini dans le profil MHD |
| Bundle | [ProvideDocumentBundleResponse](https://profiles.ihe.net/ITI/MHD/4.0.1/StructureDefinition-IHE.MHD.ProvideDocumentBundleResponse.html) | Profil défini dans le profil MHD Version 4.0.1 |
{: .grid }



#### Utilisation de l'IG

Les spécifications d'interopérabilité présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d'un système d'information partagé. Il appartient à tout responsable de traitement de s'assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex.: cadre juridique, bonnes pratiques de sécurité, ergonomie, accessibilité ...).

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
