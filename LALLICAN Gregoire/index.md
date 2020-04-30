MODELE BDD 

Il s'agit d'une base de données décrivant des articles reliés par des catégories, des tags et qui se composent aussi de commentaires sur ces articles. 

Relations:

Un article est concerné par un ou plusieurs commentaires. Un ou plsuieurs articles possède une ou plusieurs catégories. Un plusieurs articles possèdent un ou plusieurs tags.

Les tables principales:

La table ARTICLES correspond à la table centrale du processus contient un identifiant unique, le titre de l'article, le contenu de cet article, et un contenu plus résumé.

La table COMMENTAIRES dispose d'un identifiants unique, d'un pseudo, d'une adresse, d'un mail, et du contenu du commentaire en lien avec l'article

La table TAGS dispose d'un identifiant unique ainsi que d'un mot (commencant par un # afin de respecter la définition d'un tags)

La table CATEGORIES dispose d'un identifiant unique ainsiq ue du nom de la catégorie.

La table ARTICLES_CATEGORIES fait elle la liaison entre les deux tables du même nom afin que chaque articles puissent avoir une ou plusieurs catégories et qu'une catégorie puisse avoir un ou plusieurs articles.

La table ARTICLES_TAGS fait elle la liaison entre les deux tables du même nom afin que chaque articles puissent avoir un ou plusieurs tags et qu'un tags puisse avoir un ou plusieurs articles.

Enfin la table USERS recense LES UTILISATEURS. Elle dispose d'un login et d'un passsword pour chaque utilisateurs

Les tables intermédiaires:

adresse_client --> Cette table réunit pour chaque numéro de client la ou les adresses correspondantes, via l'identifiant de cette adresse.

commande_livraison --> Cette table réunit pour chaque commande le ou les numéros de livraison correspondants, via l'identifiant de cette livraison.

MODELE OMEKA S La base réalisée sous OMEKA S reprend le shéma prédédent

Description du fichier de vocabulaire omeka: j'ai dans un premier temps créé mon, propre fichier de vocabulaire, j'ai créé une classe par table puis une propriété par attribut, pour chaque table.

Sous OMEKA S:

J'ai tout d'abord crée mes différentes tables ainsi que leurs attributs dans les "ressource template" à l'aide de l'import de vocabulaires. Dans la rubrique item j'ai créé 2 3 items par ressources templates.

Dans la rubrique items j'ai intégré les observations pour les tables secondaires ainsi que les clés étrangères des sous tables secondaires.