[OBSOLETE]
Nouveau repo : https://github.com/ansforge/FIG_ans-ig-PDSm

# Description
Ceci est exemple d'ImplementationGuide très simplifié qui servira de template pour les prochains développement d'IGs.

# Installation
Voici la démarche à suivre pour générer un IG:

## Prérequis

Installer sushi, ruby et jekyll

````
npm install -g fsh-sushi
brew install ruby
gem install bundler jekyll
````

## Générer l'IG
````
bash _updatePublisher.sh // Mise à jour du publisher java
bash _genonce.sh // Génère l'IG
````
