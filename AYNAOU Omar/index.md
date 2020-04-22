Base de données « location de logements »

A l’aide du logiciel MySQL Workbench, j’ai crée les deux fichiers loc_logement.mwb et loc_logement.svg, pour le fichier loc_logement_mcd, il a été généré par le logiciel AnalyseSI,

Description des tables :

1-	Table « LOGEMENT » :

La table contient les informations nécessaires qui concernent le logement à louer sont :

•	LOG_ID : L’id du logement (type : INT)
•	LOG_TYPE : Le type du logement  (type : VARCHAR(32())
•	LOG_ADRESSE : L'adresse du logement (type : TEXT)
•	LOG_BAIN : Le nombre de bains dans le logement (type : INT)
•	LOG_DOUCHE : Le nombre de douches dans le logement (type : INT)
•	LOG_WC : Le nombre de WCs dans le logement (type : INT)
•	LOG_COUCHAGE : Le nombre de couchage dans le logement (type : SMALLINT(2))
•	LOG_INTERNET : L'accès à l'internet dans logement (type : CHAR(3))
•	LOG_AUTRES_EQUIPEMENTS : Les autres équipements dans le logement (type : TEXT)

2-	Table « CLIENT » : 

Elle contient les informations nécessaires qui concernent les clients :

•	CLI_ID : L’id du client (type : INT)
•	CLI_SEXE : Le sexe du client (type : VARCHAR(32))
•	CLI_NOM : Le nom du client (type : CHAR(32))
•	CLI_PRENOM : Le prénom du client (type : VARCHAR(32))
•	CLI_ENSEIGNE : L'enseigne du client (type : VARCHAR(100))

3-	Table « PLANNING » : 

Elle contient  :

•	PLN_JOUR : La date du jour (type : DATE)

3-	Table « LOG_PLN_CLI » : 

La table 
•	Biographie : Les informations sur la vie de l’acteur (type TEXT)

4-	Table « Genres » : 

Elle contient les genres des films :

•	IdGenre : L’identifiant du genre (INT : type nombre entier)

•	Nom : Le nom du genre de film (VARCHAR45 : type caractère limité à 45 caractères)

Relations entre les tables :

•	Un film peut avoir plusieurs directeurs de production et de même un directeur de production peut avoir plusieurs films la relation est donc une relation (n,m).

•	Un film peut avoir plusieurs acteurs et de même un acteur peut jouer dans plusieurs films la relation est donc une relation (n,m).

•	Un film peut avoir plusieurs genres par exemple (Drama et comédie, action et romance, etc) de même un genre peut contenir plusieurs films (Never Back Down et Rocky sont deux films d’action) la relation est donc une relation (n,m).

