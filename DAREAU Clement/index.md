Cette base données décrit la chaine de traitement d'un magasin livrant divers produits divers et variés directement au domicile des clients.


Relations:

Un client est concerné par une ou plusieurs commandes, en revanche une commande appartient à un seul client.
Un client possède une ou plusieurs adresses tout comme une adresse peut être associée à un ou plusieurs clients.
Une commande concerne un ou plusieurs produits, tous comme un produit peut être associé à une ou plusieurs commandes.
Une facture est associée à une seule commande.
Une livraison peut être associée à une ou plusieurs commandes, tous comme une commande peut être associée à plusieurs livraisons. 

Les tables principales:

La table COMMANDE qui correspond à la table centrale du processus contient un identifiant unique, le numéro de commande (PRIMARY KEY). Les attributs sont la date de commande, le montant de la commande (€).

La table CLIENT recense tous les clients ayant passé commande. L'identifiant client correspond à la PRIMARY KEY de la table. Les attributs sont le nom, le prénom, le genre, la date de naissance et l'email du client.

La table ADRESSE recense toutes les adresses de tous les clients. Elles possèdent un identifiant unique (id_adresse). Les attributs sont l'intitulé de la rue, le nom de la ville, le code postal, ainsi que le nom du pays qui composent l'adresse.

La table FACTURE recense toutes les factures des commandes sur les dernières années. On y retrouve toutes les les informations relatives à la commande. La table possède un identifiant unique qui est l'identifiant facture.
Les attributs supplémentaires sont le prix hors taxe et le prix toutes taxes comprises.

La table LIVRAISON recense l'ensemble des informations relatives à la livraison des commandes. Une livraison possède un identifiant unique, le numéro de livraison. Les attributs de la tables sont la date de livraison, ainsi que le nom du livreur concerné. 

Enfin la table PRODUIT recense tous les produits vendus par le magasin. Un produit est identifié par un code_produit, unique. Un produit est défini par une marque, un type, un nom de fournisseur, un prix unitaire et ses informations relatives.

Les tables intermédiaires: 

- commande_produit --> Cette table réunit pour chaque commande l'identifiant de la commande et les identifiants des produits concernés. Un attribut quantitée est référencé pour définir le nombre de produits différents vendus.
Dans le cas de la base sous omeka S je n'ai pas réussi à faire autrement que de définir cette table comme une table principale ayant un identifiant unique. 

- client has adresse --> Cette table réunit pour chaque numéro de client la ou les adresses correspondantes, via l'identifiant de cette adresse.

- commande_livraison --> Cette table réunit pour chaque commande le ou les numéros de livraison correspondantss, via l'identifiant de cette livraison.

Description du fichier de vocabulaire omeka:
Dans ce fichier de vocabulaire, j'ai créé une classe par table puis une propriété par attribut, pour chaques tables.
Comme expliqué précédemment, j'ai du faire différemment sous omeka que MySQL pour la table commande_produit. En effet, pour conserver la variable "quantité" j'ai du la transformer en table principale. 
