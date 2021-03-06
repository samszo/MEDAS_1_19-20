# Base de donnée sur le thème du ZOO

J'ai choisi de créer une base de donnée sur le thème du Zoo car elle offre de nombreuse possibilité de la modéliser.

## Description des tables 

### Animaux :

Cette table permet d'avoir les informations essentiels sur l'animal. On va donc connaître son id, son nom, sa date naissance, son sexe, sa taille ainsi que les clés étrangères comme l'id de l'enclos, l'id du zoo d'origine, et l'id du zoo où l'animal se trouve actuellement.

### Zoo :

Cette table va permettre de savoir à quel zoo l'animal appartient et d'où il vient pour ainsi savoir s'il y a eu des échanges. 

### Soignants :

Ici, il s'agit des informations essentiels sur le soignant. On aura donc son id, son nom, sa date de naissance, sa date de recrutement et sa date de fin de travail s'il en a une.

### Enclos :

Cette table va nous permettre de connaître la surperficie de l'enclos pour l'animal. Par exemple, si nous avons un tigre il sera dans un grand enclos.

### Secteurs :

Grâce à cette table nous pourrons savoir dans quel secteur se trouvera l'animal. Nous aurons juste besoin du nom de ce secteur.

### Especes :

L'objectif de cette table sera de savoir de quel espèce est l'animal. On aura besoin du nom et on aura aussi la possibilité d'écrire une description.


## Relation des entités

### Animaux x soignants

Dans notre situation, un soignant peut avoir plusieurs animaux (1, n) et un animal peut avoir un ou des soignants (1,n).

### Animaux x Enclos

Un animal n'a qu'un seul enclos (1, 1) mais un enclos peut avoir aucun ou des animaux (O, n)

### Enclos x Secteurs

Un enclos peut avoir qu'un seul secteur (1, 1) et un secteur peut avoir au moins un ou plusieurs enclos (1, n)

### Animaux x Especes

Un animal appartient à une espèce (1, 1) mais une espèce peut être catégorisé par plusieurs animaux (1, n)

### Animaux x Zoo

Un animal n'appartient qu'à un zoo (1, 1) mais un zoo peut prêter aucun ou plusieurs animaux (0, n)


