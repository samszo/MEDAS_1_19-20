Base de données sur « les films »

A l’aide du logiciel MySQL Workbench, j’ai crée les deux fichiers movie_table.mwb et movie_table.svg pour les mcd et mld, j’ai rencontré des problèmes avec l’activation de la version étudiante JMERISE, je compte contacter le support technique afin de pouvoir le faire, je vais joindre à mon dossier le message d’erreur reçu.
Description des tables :
-	Table « Films » :
La table contient les informations nécessaires qui concernent un film réalisé et sont :
•	Idfilms : L’identifiant du film (INT : type nombre entier)
•	Titre : Le titre du film (VARCHAR100 : type caractère limité à 100 caractères)
•	Date_de_sortie : La date de sortie du film (type Date)
•	Certificat : Certificat du film (VARCHAR45 : type caractère limité à 45 caractères)
•	Durée : La durée du film (type TIME)
•	Imdb_vote : Vote selon L’Internet Movie Database ‘’base de données en ligne sur le cinéma mondial et la télévision’’ (Float : type nombre réel)
•	Description : Description du film (type TEXT)
•	Metascore : La note donnée par le site américain Metacritic au film (INT : type nombre entier)

-	Table « Directeurs » : 
Elle contient les informations nécessaires qui concernent les directeurs de production :
•	IdDirecteurs : L’identifiant du directeur de production (INT : type nombre entier)
•	Nom : Le nom et le prénom du directeur de production (VARCHAR45 : type caractère limité à 45 caractères)
•	Biographie : Les informations sur la vie du directeur de production (type TEXT)

-	Table « Acteurs » : 
Elle contient les informations nécessaires qui concernent les acteurs :
•	IdActeurs : L’identifiant de l’acteur (INT : type nombre entier)
•	Nom : Le nom et le prénom de l’acteur (VARCHAR45 : type caractère limité à 45 caractères)
•	Biographie : Les informations sur la vie de l’acteur (type TEXT)

-	Table « Genres » : 
Elle contient les genres des films :
•	IdGenres : L’identifiant du genre (INT : type nombre entier)
•	Nom : Le nom du genre de film (VARCHAR45 : type caractère limité à 45 caractères)
Relations entre les tables :
•	Un film peut avoir plusieurs directeurs de production et de même un directeur de production peut avoir plusieurs films la relation est donc une relation (n,m).
•	Un film peut avoir plusieurs acteurs et de même un acteur peut jouer dans plusieurs films la relation est donc une relation (n,m).
•	Un film peut avoir plusieurs genres par exemple (Drama et comédie, action et romance, etc) de même un genre peut contenir plusieurs films (Never Back Down et Rocky sont deux films d’action) la relation est donc une relation (n,m).

