# Projet - Bases de données et systèmes d'information

J'ai pour habitude de prendre le train régulièrement sauf en ces temps de confinement.
J'ai donc trouvé judicieux de m'intéresser à ce domaine. Ce projet m'a permis de découvrir et de prendre en main un nouvel outil.
Je dois avouer que j'ai été un peu déboussoler sur Omeka-S, ce dernier offre la possibilité de créer une base de donnés sans coder en SQL.
J'ai eu l'impression de ne pas maîtriser la création de base.

En ce qui concerne ma base j'ai voulu la centrer autour de l'action voyager en train.
Dans mon exemple un voyage est possible si les champs suivant sont renseignés une place, une date,  un lieu de départ et un lieu d'arrivé.
Je fais appelle également à deux clef étrangères deux tables.

*1ère table* : 
La table des factures dont le prix est calculé en fonction de la carte de fidélité que possède le client.
*2ème table* : 
La table qui concerne la voiture qui est elle même reliée à la table train. Bien entendu une voiture peut appartenir à plusieurs trains.