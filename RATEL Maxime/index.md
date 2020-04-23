La base de données contient les données client d'une enseigne Hi-Tech & Accessoires, qui regroupe les commandes des clients.
Nous avons alors 5 tables :

ADRESSE : c'est la table contenant l'adresse des clients. Elle est composée d'un identifiant qui est l'adresse complète, du numéro de rue, du nom de la rue, du code postal et de la ville tout en ajoutant l'identifiant client qui est rattaché en tant que clé étangère.

CLIENT : c'est la table contenant la liste des clients. Elle est composée de l'identifiant du client qui est son nom complet, son nom, son prénom, sa date de naissance, le numéro de télephone, l'adresse e-mail et le genre du client (homme ou femme) tout en ajoutant l'adresse du client, le numéro de commande et le numéro de carte de fidélité qui y sont rattachés en tant que clés étrangères.

COMMANDE : c'est la table contenant les commandes passées par un client. Elle est composée d'un identifiant de commande qui est le numéro de commande, du nombre de produit commandé, du prix de la commande hors taxe, du prix de la commande toutes taxes confondues et de la date de commande tout en ajoutant l'identifiant client, l'identifiant produit et le numéro de carte de fidélité qui y sont rattachés en tant que clés étrangères.

FIDELITE : c'est la table contenant les données présentes sur la carte de fidélité du client. Elle est composée de l'identifiant de fidélité qui est le numéro de carte de fidélité, la date de fidélité, le nombre de points présents sur la carte et le niveau de fiélité calculée par rapport au nombre de points (intermédiaire en dessous de 1 000 points, prenium entre 1 000 et 2 000 points et gold au dessus de 2 000 points). On y ajoute aussi l'identifiant client et le numéro de commande en tant que clés étangères.

PRODUIT : c'est la table contenant les produits vendus dans les commandes. Elle est composée de l'identifiant de produit qui correpond à la référence du produit (le code-barres), du nom du produit, d'une description de l'objet occasionnelle, du prix du produit tout en ajoutant le numéro de commande en tant que clé étangère.


Liaisons de tables : Un client peut ne pas avoir commandé (relation 0,n). Autrement dit, une personne peut avoir un compte client sans n'avoir jamais commandé. Une commande est effectuée par un seul client (relation 1,1). Un produit peut n'avoir été jamais commandé, et peut être commandé un nombre infini de fois (relation 0,n). Ce sera notamment le cas pour les produits que l'on vient tout juste de mettre dans les magasins. Un magasin peut n'avoir jamais eu de commande, et peut être rattaché à un nombre infini de commande (relation 0,n). Ce sera le cas pour les nouveaux magasins, entrés en base de données mais qui n'ont pas encore ouvert. Un détail de commande comporte un produit et un seul, est effectuée dans un seul magasin et correspond à une seule commande. (relations 1,1).
