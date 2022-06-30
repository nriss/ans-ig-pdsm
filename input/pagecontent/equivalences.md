### Liste des équivalences

Ce document indique les équivalences avec d'autres modèles

#### Mise en équivalence SFE-PDS avec le profil MHD

Ce tableau reprend les acteurs identifiés dans les SFE-PDS ainsi que les flux qu’ils prennent en charge et les met en équivalence avec le profil MHD. 

| SFE-PDS | Profil MHD |
| ----- | ----- |
| **Producteur de documents** | **Document source** |
| Flux 1 - AjoutLotDocument <br/> Flux 2 - ResultatAjoutLotDocument | Provide Document Bundle [ITI-65] |
| Flux 3 - MiseAJourMetadonneeFiche <br/> Flux 4 - ResultatMAJMetadonneFiche | Hors périmètre MHD|
| **Consommateur de documents** | **Document Consumer** |
| Flux 5 - RechercheDocument <br/> Flux 6 -ResultatRechercheDocument | Find Document Lists [ITI-66] <br/>Find Document References [ITI-67] |
| Flux 7 - DemandeConsultationDocuments <br/>Flux 8 - ResultatDemandeConsultationDocument | Retrieve Document [ITI-68]| 
| **Gestionnaire de partage de documents** | **DocumentRecipient** |
| Flux 1 - AjoutLotDocument <br/> Flux 2 - ResultatAjoutLotDocument | Provide Document Bundle [ITI-65] |
| Flux 3 - MiseAJourMetadonneeFiche <br/> Flux 4 - ResultatMiseAJourMetadonneFiche | Hors périmètre MHD |
| **Gestionnaire de partage de documents** | **Document Responder** |
| Flux 5 - RechercheDocument <br/> Flux 6 -ResultatRechercheDocument | Find Document Lists [ITI-66] <br/> Find Document References [ITI-67] |
| Flux 7 - DemandeConsultationDocuments <br/> Flux 8 - ResultatDemandeConsultationDocument | Retrieve Document [ITI-68] |
{: .grid }

#### Mise en correspondance des flux avec le volet Partage de documents de santé

| **Flux partage de documents de santé en mobilité** | **Flux partage de documents de santé** |
| ----- | ----- |
| Flux 1 - AjoutLotDocument <br/> Flux 2 - ResultatAjoutLotDocument XDS | Provide & Register Document Set ITI-41 |
| Flux 3 - MiseAJourMetadonneeFiche <br/> Flux 4 - ResultatMAJMetadonneFiche | XDS Update Document Set ITI-57 |
| Flux 5 - RechercheDocument  <br/> Flux 6 -ResultatRechercheDocument |  XDS Stored Query ITI-18 |
| Flux 7 - DemandeConsultationDocuments  <br/> Flux 8 - ResultatDemandeConsultationDocument | XDS Retrieve Document Set ITI-43 |
{: .grid }

#### Mise en correspondance des flux avec API Doc de l'Assurance Maladie

| **Flux partage de documents de santé en mobilité** | **Flux API DOC CNAM** |
| ----- | ----- |
| Flux 1 - AjoutLotDocument <br/> Flux 2 - ResultatAjoutLotDocument XDS | Flux 1 : Alimentation d'un document |
| Flux 3 - MiseAJourMetadonneeFiche <br/> Flux 4 - ResultatMAJMetadonneFiche | Pas d'équivalence |
| Flux 5 - RechercheDocument  <br/> Flux 6 -ResultatRechercheDocument |  Flux 2 : Recherche multicritère des métadonnées d'un ou plusieurs documents |
| Flux 7 - DemandeConsultationDocuments  <br/> Flux 8 - ResultatDemandeConsultationDocument | Flux 3 : Récupération d'un document |
