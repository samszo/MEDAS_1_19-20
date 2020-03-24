# Description de la base de donnée

Le fichier modele.svg est un script générant la création d'une base de données contenant 6 tables.
Elle représente une téléconsultation.

## Description des tables :

### Patient
Il s'agit d'une tables contentant quelques informations nécessaires à l'identification de l'individu.

### Docteur
Cette table contient les informations nécessaires pour identifier le médecin.

### speciality
Cette table permet de connaitre le titre exacte du praticien de santé ainsi que la nature de son poste, par extension cela permet de savoir s'il peut prescrire.

### consultation
Cette table recence toute les téléconsultations existante. Il y a 4 champ de type TIMESTAMP afin de décrire temporellement la téléconsultation : par exemple il est possible que la téléconsultation n'est pas lieu lors de date convenue, ainsi le champ start_date sera différent de date_consultation.
Le champ status permet par exemple de savoir s'il la téléconsultation est close ou si elle est ouverte.

### medicaments
La table medicaments recense tout les médicaments existant dans la base vidal. A partir de sa clé primaire il est possible de connaitre son nom, la posologie associée, son prix unitaire et s'il s'agit d'un médicament remboursé.

### prescrition
Cette table permet à une consultation d'être associé à plusieurs médicaments.


## Relation entre les tables : 

- Les tables Docteur et speciality ont une relation de type 1:1 car un docteur ne peut avoir qu'une seule spécialité associé à sa profession.

- La table Patient est relié à la table consultation par une relation 1:n car un même patient peut effectué plusieurs téléconsultation. L'inverse est impossible, une téléconsultation ne peut concerner qu'un unique patient.

- La table consultation et medicaments sont relié par l'intermédiaire de la table prescription. Une téléconsultation possède une préscription, c'est-à-dire une ordonnance, qui elle-même peut être relié à plusieurs médicaments.