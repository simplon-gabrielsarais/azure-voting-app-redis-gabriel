# Procédure de run de la pipeline
## Pré-requis

- Un accés au repository git **"azure-voting-app-redis-gabriel"**
- Un accés au projet **"Brief-8"** dans l'organisation **"gsaraisext"** sur Azure Devops avec son compte Azure

## Première étape : Lancement du Pipeline

Dès qu'un push sera effectué sur le repository, la pipeline se lancera.
Il est important de modifier le numéro de version dans le code de l'application de vote, sans quoi la pipeline se lancera sans mettre à jour le container, ni sur registry, ni sur l'aks.

## Deuxième étape: Validation Manuel
Après que tous les tests ai été effectué par la pipeline un mail sera envoyé au responsable de cette dernière (gabriel sarais) pour une validation manuel afin de finaliser le déploiment en production.

→ Rendez vous sur l'adresse https://dev.azure.com/ avec le navigateur web de votre choix et vous connecter avec votre compte Azure

→ cliquer sur le projet "Brief-8"

→ Cliquer dans le menu sur gauche sur "Pipelines" puis sur "Pipelines" juste en dessous

→ Cliquer sur le pipeline "recently run pipelines" avec le symbole bleu tournant.

→ de même dans la présentation suivante, cliquer le pipeline avec le symbole bleu et la description "Update main.py"
