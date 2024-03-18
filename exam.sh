#!/bin/bash

# Fonction pour récupérer la date actuelle
get_current_date() {
    date +"%Y-%m-%d %H:%M:%S"
}
# Appel de la fonction pour afficher la date
echo "$(get_current_date)" >> sales.txt
# appel de la fonction pour afficher la date dans le fichier job cron
echo "$(get_current_date)" >> ~/exam_said/exam_bash/cron.txt
# Tableau des modèles de cartes graphiques
cartes_graphiques=("rtx3060" "rtx3070" "rtx3080" "rtx3090")

# Boucle pour récupérer les ventes de chaque modèle

for carte in "${cartes_graphiques[@]}"; do
    ventes=$(curl -s "http://0.0.0.0:5000/$carte")
    echo "$carte : $ventes" >> sales.txt
    # Affichage des ventes le fichier job cron
    echo "$carte : $ventes" >> ~/exam_said/exam_bash/cron.txt
done

