# Description de la basse de données sur le thème des groupes de musique

*Note:* Le modele.svg et le modele.sql ont été créés avec MySQL Workbench. Le modèle est un *Enhanced entity–relationship model (EER)* et la notation *IE (Crow’s Feet)* a été utilisée.  
En complément, je mets également à disposition un modele_mcd.svg et un modele_mld.svg  

## Description des tables :

### Table musicien 
L'objectif de cette table est d'avoir, pour chaque musicien, des informations de base les concernant. A savoir : le nom, le prénom, le nom de scène, nationalité, date de naissane et date de décès.

### Table groupe 
Cette table permet d'avoir des informations essentielles sur le groupe : son nom, les principaux styles de musique définissant ce groupe, la date de formation et le pays d'origine. 

### Table fonction musicien 
Cette table recense toutes les fonctions possibles d'un musicien dans un groupe (bassiste, guitarise, batteur etc.)

### Table statistiques groupe 
Cette table permet d'avoir, pour une année donnée, quelques statistiques concernant le nombre de CD vendus, nombre de concerts réalisés, le nombre total d'écoute sur les plateformes de streaming et les sources de ces informations. 

### Table type de matériel 
Cette table utilise une association reflexive. Voici un tableau, non exhaustif, pour en illustrer le raisonnement.

| ID  | Nom  |  Id_type_materiel_parent |
|---|---|---|
|  1 |  Instrument | /  |
|  2 |  Guitare/Basse |  1 |
|  3 |  Batterie |  1 |
|  4 | Clavier  | 1  |
|  5 |  Guitare électrique | 2  |
|  6 |  Basse électrique | 2  |
|  7 |  Guitare acoustique |  2 |
|  8 | Batterie électrique  | 3  |
|  9 | Batterie acoustique  |  3 |

L'idée est est de pouvoir spécifier au maximum le type d'un instrument en faisant appel, dans une même table, à des sous catégories (logique père fils). Par exemple, la catégorie guitare/basse peut avoir plusieurs sous catégories (basse électrique, guitare acoustique etc.). Il faut donc aller du plus général au plus spécifique.  
Dans le tableau ci-dessu, Guitare/Basse - Batterie - Clavier sont des instruments "généraux". C'est pourquoi il sont tout en haut de la liste et que, surtout, leur "Id_type_materiel_parent" est 1. L'association réflexive va relier ces différents 1 à l'ID 1 (première ligne) qui est nommée instrument. Ainsi, Guitare/Basse - Batterie - Clavier sont tous reliés au nom "instrument". Ensuite, il faut spécifier, par exemple, le genre guitare/basse. C'est pourquoi il existe de la ligne 5 à 7 les sous catgégories suivantes : Guitare électrique - Basse électrique - Guiatre acoustique. Chacune de ces sous catégories ont comme "Id_type_materiel_parent" le nombre 2. Ce nombre 2 est également l'ID de la colonne 2 (guitare/basse). Ainsi, Guitare électrique - Basse électrique - Guitare acoustique sont chacune des sous catgégories de "guitare/basse". Il est possible de spécifier davantage ces sous catégories en leur assignant d'autres sous catégories. D'où l'utilité d'utiliser l'association relfexive. 

### Table matériel 
Cette table permet de renseigner un matériel musical (un instrument, une pédale d'effet, un amplificateur etc.) en lui assignant une couleur (sa couleur principale), une année de construction et une référence qui est unique (important pour la compréhension de la relation entre les tables). *Note :* Pour l'année de construction, je veux uniquement l'année sous le format YYYY. Un format (JJ-MM-YYYY) serait compliqué à renseigner de manière précise. Cependant, je n'ai pas pu spécifier sous sql workbench le format YEAR() qui parait le plus adapté (un message d'erreur apparaissait). J'ai donc décidé d'assigner le type integer à la variable année. 

### Table marque 
Cette table permet d'avoir des informations sur le nom de la marque de l'instrument, son lieu de conception et de fabrication. 

## Relations entre les tables : 
Un musicien (table musicien) doit avoir un ou plusieurs groupes (1,n) et un groupe (table groupe) doit avoir un ou plusieurs musiciens (1,n). *Note :* certains musiciens sont en solo mais sont tout de même considérés comme un groupe (ce qui n'est pas forcément logique). C'est pourquoi j'ai choisi la relation 1,n (un groupe doit avoir un ou plusieurs musiciens). La relation 1,n 1,n entre la table musicien et la table groupe permet de créer une table intermédiaire qui est nommée "musicien groupe". J'ai ajouté dans cette table une date début activité et date de fin activité. En effet, certains membres d'un groupes ne sont pas permanents. Exemple, un guitariste peut avoir joué dans un groupe X uniquement entre 1995 et 1998. *Note :* je rencontre le même problème pour la date en format YYYY c'est pourquoi j'ai choisi le type integer. De plus, un musicien peut avoir plusieurs fonctions (il peut être bassiste dans un groupe A puis chanteur dans un groupe B). Par conséquent, j'ai créé une table nommée "fonction musicien" qui est reliée à la table intermédiaire "musicien groupe" par la relation suivante : la fonction d'un musicien doit être associée à un ou plusieurs musiciens d'un groupe (table intermédiaure "musicen groupe". Relation 1,n. A l'inverse, le musicien d'un groupe doit avoir une unique fonction (table fonction musicien) (relation 1,1). 

Un groupe (table groupe) doit avoir seulement un type de statistiques le concernant (1,1) et les statistiques du groupe (table du même nom) doivent avoir uniquement un et un seul groupe (1,1).

La table type de matériel doit se référer à un unique matériel (table matériel), relation 1,1. Un matériel (table matériel) doit se référer (sachant qu'il a une référence unique) a 1 seul type de matériel (relation 1,1).  

Une marque (table marque) doit être associée à un ou plusieurs matériel (table matériel) (relation 1,n). Exemple: La marque X peut être associée à une guitare électrique de couleur rouge, à une basse de couleur verte etc. Un matériel (table du même nom) doit avoir une seule marque (table marque). Relation 1,1.  

Un matériel (table matériel) peut être possédé par aucun ou plusieurs musiciens ("aucun" dans le cas d'un chanteur qui ne possède d'instruement de musique). Relation 0,n. Un musicien (table musicien) peut posséder aucun ou plusieurs matériel (table matériel). Relation 0,n. Création d'un table intermédiaire "musicien matériel".  
