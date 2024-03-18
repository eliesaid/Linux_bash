echo "# Linux_bash" >> README.md

Instructions :

se connecter à une API appellée api avec la commande suvante:

"wget --no-cache https://dst-de.s3.eu-west-3.amazonaws.com/bash_fr/api.tar"

Decompresser le fichier api.tar avec la commande suivante

"tar -xvf api.tar"

On lance l'api aprés avoir donnée les dtoits d'accés:

"chmod +x api"
"./api &"

L'api tourne sur "localhost (0.0.0.0) sur le port 5000"

Cette API nous dévoile les ventes par minutes du plus gros revendeurs de cartes graphiques sur les modèles rtx3060, rtx3070, rtx3080, rtx3090 et rx6700. Il est possible de récupérer ces informations à l'aide de la commande cURL. 

Installer curl pour pouvoir lancer des requettes  avec les lignes de commandes suivantes:


"sudo apt-get update"

"sudo apt-get install curl"

On peut par exemple récupérer les ventes de rtx3060 a l'aide de la commande suivante:

curl "http://0.0.0.0:5000/rtx3060"


script bash nommé exam.sh dont les droits d’exécution sont -rwx---r-x.

Le script bash devra récupérer les chiffres correspondant au ventes des différentes carte graphique et écrire les information dans un # fichier sales.txt

Cron Job qui exécute mon script toutes les minutes seulement durant les mois de fevrier à juillet (copier le Cron Job dans un fichier # cron.txt dans le dossier)



