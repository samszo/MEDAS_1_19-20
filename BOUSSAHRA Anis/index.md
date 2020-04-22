Cette base de données décrit un système de vente à 2 dimensions, la première est la vente "customer" (level_one_sale), l'entreprise vend son produit au customer, qui lui même le vendre aux distributeurs, c'est une dimension importante, il faut donc bien stocker ces tables. Chaque customer et ditributeur est rattaché à un pays, il existe une table pays intermédiaire et les "customer" dispose d'un stock (level_one_inventory). Chaque produit est rattaché à une famille.

Les tables : 

"Level_one_sale" regroupe les ventes faites aux "customer" dispose d'une clé primaire "level_one_sale_id", d'une FK product_id pour la relier à la table produits et une FK customer_id pour la table customer. Aussi, il y a la quantité vendue et la date de vente.

"Level_two_sale" regroupe les ventes faites aux "distributeur" dispose d'une clé primaire "level_two_sale_id", d'une FK product_id pour la relier à la table produits et une FK distributor_id pour la table distributor. Aussi, il y a la quantité vendue et la date de vente.

La table "customer" contient customer_id comme PK et customer_name ainsique que customer_country_id comme FK pour la relier à la table pays des customer. Même chose pour distributor.

La table product contient le product_id comme PK, reliée à la table family pour pouvoir l'identifier à une famille, elle contient aussi le prix et le nom du produit. 

La table "inventory_level_one" comprend les stocks des customer avec inventory_level_one_id comme PK et product_id comme FK.
