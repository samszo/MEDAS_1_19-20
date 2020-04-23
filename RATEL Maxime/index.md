La base de données contient les données client d'une enseigne Hi-Tech & Accessoires, qui regroupe les commandes des clients.
Nous avons alors 5 tables :

ADRESSE : table contenant l'adresse des clients. Elle est composée d'un identifiant qui est l'adresse complète, le nom du magasin, son adresse, code postal et ville, ainsi que le type de magasin.

CLIENT : client du magasin. Cette table concerne les différents clients du magasin. Elle contient le numéro de client, son nom et prénom, ses coordonnées de contact (numéro de téléphone, email) et son adresse.

COMMANDE : une commande est passée par un client, et permet de regrouper les "détail commande". On trouve alors un identifiant de commande, la date de commande ainsi que le prix total de l'achat et le client qui y est rattaché.

FIDELITE : cette table permet de stocker chaque détail d'une commande/d'un achat. On y retrouve en clés étrangères un produit et un magasin, ainsi que l'identifiant de commande qui regroupera tous les détails de la commande. On trouve aussi la quantité de produits achetés ainsi que le prix total et la date d'achat.

PRODUIT : table contenant les produits vendus par la marque. Un produit est défini par un identifiant, un nom, une catégorie de produit (Fruit, Légume, Viande, Boulangerie ...) ainsi qu'un prix unitaire.


Liens entre les tables : Un client peut ne pas avoir commandé (relation 0,n). Autrement dit, une personne peut avoir un compte client sans n'avoir jamais commandé. Une commande est effectuée par un seul client (relation 1,1). Un produit peut n'avoir été jamais commandé, et peut être commandé un nombre infini de fois (relation 0,n). Ce sera notamment le cas pour les produits que l'on vient tout juste de mettre dans les magasins. Un magasin peut n'avoir jamais eu de commande, et peut être rattaché à un nombre infini de commande (relation 0,n). Ce sera le cas pour les nouveaux magasins, entrés en base de données mais qui n'ont pas encore ouvert. Un détail de commande comporte un produit et un seul, est effectuée dans un seul magasin et correspond à une seule commande. (relations 1,1).
