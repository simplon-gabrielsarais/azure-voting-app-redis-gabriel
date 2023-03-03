# Procédure de run de la pipeline

## Contact

Si à une des étapes de cette procédure, un élément n'est pas dans l'état indiqué, merci de vous rapprocher rapidement de Mr Thomas Julian / mail / numéro de téléphone

## Pré-requis

- accés au dossier "azure-voting-app-redis"
- accés au projet "Brief_8_TJ" sur Azure Devops avec son compte Azure

## Première étape : Lancement du Pipeline

&rarr; Sur un poste de travail, dans l'explorateur de fichier vous rendre dans le dossier "Documents", puis dans le dossier "azure-voting-app-redis".

&rarr; faites un clic droit sur le fichier auto_maj.sh puis cliquer sur "éxécuter comme un programme"

## Deuxième étape: Validation Manuel

&rarr; Rendez vous sur l'adresse https://dev.azure.com/ avec le navigateur web de votre choix et vous connecter avec votre compte Azure

&rarr; cliquer sur le projet "Brief_8_TJ"

&rarr; Cliquer dans le menu sur gauche sur "Pipelines" puis sur "Pipelines" juste en dessous

&rarr; Cliquer sur le pipeline "recently run pipelines" avec le symbole bleu tournant.

&rarr; de même dans la présentation suivante, cliquer le pipeline avec le symbole bleu et la description "Update main.py"

## Troisième étape : test manuel

&rarr; Sur cette page, vérifier que les "Stages" avant l'étape de validation sont bien présent avec une pastille verte "V"

&rarr; Vous pouvez voir un encart avec un texte "1 manual validation needs your review before this run can continue", c'est le signe qu'une validation manuelle est attendu de votre part:
- en premier lieu vous allez vous rendre sur ce site internet dans votre navigateur sur un autre onglet : http://votingappkube.simplon-thomas.space/
- Vous atterissez sur le site maintenu par la pipeline, pour satisfaire au test, validez que vous ếtes bien sur voteapp-canary en actualisant la page de manière à le voir apparaître dans le titre.
- cliquez sur chaqun de boutons de vote, et vérifiez qu'ils répondent correctement en ajoutant 1 dans chaque valeur et en mettant à zéro en appuyant sur "reset".
- Une fois cela fait actualisez plusieurs fois la page pour vérifier que les résultats sont les mêmes à chaque fois.

&rarr; une fois ces tests effectués retournez sur la page précédente d'azure devops et cliquez sur "Review"

&rarr; renseignez la date et l'heure dans le commentaire et cliquez sur "Resume"

&rarr; restez sur la page jusqu'à ce que le dernier job soit validé, puis retourner sur http://votingappkube.simplon-thomas.space/ pour valider que le site est fonctionnel