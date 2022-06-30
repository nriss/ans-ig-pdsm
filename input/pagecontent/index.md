### Introduction
Ce document présente les spécifications techniques du volet "Partage de documents de santé en mobilité". Sa production est basée sur les [Spécifications Fonctionnelles des Echanges du volet Partage de Documents de Santé](https://esante.gouv.fr/volet-partage-de-documents-de-sante) (SFE-PDS) et le profil [MHD](https://wiki.ihe.net/index.php/Mobile_access_to_Health_Documents_(MHD)) (Mobile access to Health Documents) défini par IHE (Integrating the Healthcare Entreprise).
    
Il s’agit d’un volet de la couche service spécifiant les modalités de partage de documents sans contraindre ces derniers. Les spécifications liées aux documents de santé constituent les volets de la couche métier du CI-SIS.

A noter que la dénomination du volet « Partage de documents de santé en mobilité » n’est pas restrictive. En effet, les standards sous-jacents aux spécifications techniques, par opposition au volet historique « Partage de documents de santé », permettent le déploiement de cas d'usage en mobilité mais ces spécifications peuvent également être mises en œuvre dans d'autres cas d'usage.

### Les flux

Des flux ont été identifiés lors d'études métiers et définis, avec partage de ressources FHIR. Pour en savoir davantage, rendez-vous sur la page  <a href="construction_des_flux.html">construction des flux.

* Le <a href="flux1.html">flux 01</a> - AjoutLotDocument : pour la demande d’ajout ou de remplacement d’un document au gestionnaire de partage de documents
* Le <a href="flux2.html">flux 02</a> - ResultatAjoutLotDocument : pour obtenir le résultat de la demande de modification du dossier
* Le <a href="flux3.html">flux 03</a> - MiseAJourMetadonneeFiche : pour la modification de certaines métadonnées du document comme le statut ou le niveau de confidentialité
* Le <a href="flux4.html">flux 04</a> – ResultatMAJMetadonneeFiche : pour obtenir le résultat de la demande de mise à jour des métadonnées de la fiche
* Le <a href="flux5.html">flux 05</a> - RechercheDocument : pour la recherche de documents à l'aide de critères de recherch
* Le <a href="flux6.html">flux 06</a> - ResultatRechercheDocument : pour obtenir le résultat de la recherche de document
* Le <a href="flux7.html">flux 07</a> - DemandeConsultationDocument : pour demander la consultation d'un ou de plusieurs document
* Le <a href="flux8.html">flux 08</a> - ResultatDemandeConsultationDocument : pour obtenir le résultat de la demande de consultation.