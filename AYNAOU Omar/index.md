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

4-	Table « LOG_PLN_CLI » : 

c'est une jointure des trois précédentes tables elle contient  :

•	PLN_JOUR : La date du jour (type : DATE)
•	CLI_ID : L’id du client (type : INT)
•	LOG_ID : L’id du logement (type : INT)
•	LOG_PLN_CLI_NB_PERS : le nombre de personnes (type : SMALLINT)
•	LOG_PLN_CLI_RESERVE : le client reservant  (type : INT(2))
• LOG_PLN_CLI_OCCUPE : les occupants  (type : INT(2))


5-	Table « EMAIL » : 

Elle contient les informations concernant le mail du client :

•	CLI_ID : L’id du client (type : INT)
•	EML_ID : L’id de l'émail (type : INT)
•	EML_ADRESSE : L’adresse émail (type : VARCHAR(100))
•	EML_LOCALISATION : La localisation de l'émail (type : VARCHAR(65))

6-	Table « TELEPHONE » : 

Elle contient les informations concernant le téléphone du client :

•	CLI_ID : L’id du client (type : INT)
•	TEL_ID : L’id du téléphone (type : INT)
•	TEL_TYPE : Le type du téléphone (type : VARCHAR(45))
•	TEL_NUMERO : Le numéro du téléphone (type : CHAR(20))
•	TEL_LOCALISATION : La localisation du téléphone (type : VARCHAR(65))

7-	Table « ADRESSE » : 

Elle contient les informations concernant l'adresse du client :

•	CLI_ID : L’id du client (type : INT)
•	ADR_ID : L’id de l'adresse (type : INT)
•	ADR_LIGNE1 : La première ligne de l'adresse (type : VARCHAR(45))
•	ADR_LIGNE2 : La deuxième ligne de l'adresse (type : VARCHAR(45))
•	ADR_LIGNE3 : La troisième ligne de l'adresse (type : VARCHAR(45))
•	ADR_VILLE : La ville (type : CHAR(32))
•	ADR_PAYS : Le pays (type : CHAR(32))


8-	Table « FACTURE » : 

Elle contient les informations concernant la facture :

•	CLI_ID : L’id du client (type : INT)
•	FCT_ID : L’id de la facture (type : INT)
•	FCT_PAIEMENT_MDE : Le mode du paiement (type : VARCHAR(65))
•	FCT_DATE : La date de la facture (type : DATE)
•	FCT_PAIEMENT_DATE : La date du paiement (type : DATE)

9-	Table « LIGNE_FACTURE » : 

Elle contient les informations concernant la ligne facture :

•	LGN_FCT_ID : L’id dE la ligne facture (type : INT)
•	FCT_ID : L’id de la facture (type : INT)
•	LGN_FAC_QTE : La quantité de la ligne facture (type : INT)
•	LGN_FAC_REMISE_POURCENT : Le pourcentage de la remise (type : INT)
•	LGN_FAC_REMISE_MONTANT : Le montant de la remise (type : DECIMAL(2))
•	LGN_FAC_MONTANT : Le montant (type : DECIMAL(2))
•	LGN_FAC_TAUX_TVA : Le taux de la tva (type : DECIMAL(2))

8-	Table « TARIF » : 

Elle contient les informations concernant les tarifs :

•	TRF_DATE_DEBUT : La date de début (type : DATE)
•	TRF_TAUX_TAXES : Le taux des taxes (type : INT)
•	TRF_SERVICES : Les tarifs des services (type : VARCHAR(45))

4-	Table « TRF_LOG» : 

c'est une jointure entre la table LOGEMENT et la table TARIF elle contient  :

•	TRF_DATE_DEBUT : La date de début (type : DATE)
•	LOG_ID : L’id du logement (type : INT)
•	TRF_LOG_PRIX : Le prix (type : DECIMAL(2))


Relations entre les tables :

•	Le client possède un émail (1,1), un téléphone (1,1) et il est domicilié dans une adresse (1,1)

•	Le client reçois une facture (1,1)

•	La ligne facture peut avoir plusieurs factures, donc une relation (1,n)

•	Un logement peut avoir plusieurs clients, donc une relation (1,n)

•	Un logement peut avoir plusieurs TARIFS, ça dépend des services, les équipements et le taux des taxes, donc une relation (1,n)


