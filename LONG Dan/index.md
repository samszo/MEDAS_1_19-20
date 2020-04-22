# Présentation de la base de données "Ligue des Champions"
-------------------------------------------------------------

La Ligue des Champions. La coupe au grandes oreilles. La plus prestigieuse des compétitions. Le lieu où se rassemblent les meilleurs équipes d'Europe, les meilleurs joueurs.

Créé en 1955, ce tournoi suscite un engouement et un enthousiasme qui, chaque année, fait déplacer les supporters des clubs qualifiés. En effet, des phases de poules à la finale, chaque match affiche une intensité et une qualité de jeu que seuls des équipes aux joueurs de classe mondiale peuvent fournir. 

Que vous ayez joué au foot pendant la récré ou les dimanches, que vous aimiez le rugby, le basket ou  l'athlétisme, la Ligue de Champions est un événement qui parle à chaque personne : des courses spectaculaires, des tirs puissants et flottant à la trajectoire imprévisible, des feintes subtiles, des gestes techniques mystifiantes, des dribbles imparables... portés à un très haut niveau !

Cette base de données à pour but de vous présenter les caractéristiques des équipes vainqueurs de la Ligue des Champions. Cette base de données est composée de 3 tables principales :

* Clubs : les caractéristiques des clubs participants
* Ligue des Champions : les finales jouées années après années
* Joueurs : les joueurs majeurs qui ont marqué l'histoire de la Ligue des Champions

Elle est aussi composées de 3 tables intermédiaire : 
* "qui ont gagné" 
* "Possède/appartient" 
* "Joueurs has Ligue des Champions"


Entrons dans les tables pour les regarder en détails.


### La table clubs

La table clubs est composée de : 
* id
* Nom : le nom du club
* Surnom : le surnom attribué au club
* Fondation : la date de création du club
* Couleur : les couleurs du maillot
* Pays : d'où vient le club


### La table Ligue des Champions

La table clubs est composée de : 
* id
* Edition : la date de la compétition
* Match final : les deux finalistes de la compétition
* Score : le score à la fin du match
* Lieu de la finale : le stade et la ville où s'est déroulé la finale
  

### La table joueurs

La table clubs est composée de : 
* id
* Nom 
* Prénom 
* Date de naissance
* Club
* Nationalité
* Poste


### La table "qui ont gagné"

Elle représente la relation entre clubs et Ligue des Champions. 
Un club peut gagner plusieurs éditions, le trophée peut être gagné par plusieurs clubs.


### La table "Possède/appartient"

Elle établie le relation entre clubs et joueurs. 
Un club peut posséder plusieurs joueurs. A contrario, un joueur ne peut appartenir qu'à un seul club.


### La table "Joueurs has Ligue des Champions" 

Elle est la relation entre joueurs et Ligue des Champions.
Un joueur peut gagner plusieurs trophées. De même qu'un trophée peut être gagné par plusieurs joueurs.






