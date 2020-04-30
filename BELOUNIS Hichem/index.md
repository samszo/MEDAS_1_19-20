---
title: "Modélisation d'une base de données"
author: |
  | Hichem Belounis
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Les données logement
Actuellement en alternance à la SNCF, j'exerce en tant qu'analyste de données des demandes de logement des salariés. 
Mon service a le rôle de relayer les informations concernant les demandes de logements des agents aux bailleurs sociaux suscpetibles de les accueillir.
Il existe plusieurs types de demandes de logement, les unes toutes différentes des autres. Certains veulent changer de logement pour un meilleure confort, d'autres se rapprocher de leur lieu de travail et d'autres qui souhaitent acheter un logement. 
Mon but étant de donner une vision d'ensemble des demandes de logements aux décideurs afin qu'ils puissent agir en conséquence. 

Toutefois la variété des sources de données et la finalité de mon service rendent la tâche complexe.

Pour commencer je me base sur les données des ressources humaines afin de situer nos bassins d'emplois et par la suite proposer une offre qui colle, d'une part, avec  sa demande (nombre de pièces, nombre de personnes à loger, Rez-de-chaussée ou non, loyer maximum supportable...) et son lieu de travail et d'autres part avec ses revenus et sa composition familiale. 

## La base des ressources humaines

La base RH est composée de plusieurs variables relatives à la situation del'agent, de fait cette base de données n'est pas exhaustive. Sont présentées ci-dessus les variables qui nous intéressent, d'un côté les variables géographiques nous permettant de situer les lieux d'emploi et les lieux d'habitats des agents. De l'autre côté on a besoin de connaître sa situation personnelle dont la situation conjugale et le nombre d'enfants mais également sa rémunération afin de proposer des offres qui collent avec ces caractéristiques.

Cependant tous les agents ne font pas de demandes de logements, certains en font la demande car ils souhaitent emménager avec leur conjoint ou attendent la venue d'un nouveau né et d'autres rencontrent des problèmes pour se loger essentiellement en île-de-France où le marché de l'immobilier est saturé.


## La base des demandes de logements


La base des demandes de logements est quant à elle beaucoup plus riches en information ce qui est dû aux nombreux souhaits que les demandeurs peuvent faire. Le demandeur fourni ses souhaits concernants la ou les commune(s) où il souhaite loger avec d'autres caractéristiques telles que le montant maximum alloué à la location du logement, le nombre de pièces etc ... Il existe également des agents qui font des demandes mais qui ne sont pas dans l'urgence, ils souhaitent déménnager plus par changement que par nécessité, cela on les appelle les demandes coup de coeurs. A chaque demandeur est attribué une "note" qu'on nomme cotation pour juger du caractère urgent ou non de la situation du demandeur. Ainsi un demandeur faisant une demande coup de coeur ne sera pas prioritaire face à un demandeur attendant un enfant et dont la surface actuelle de ce logement ne lui permet pas d'accueillir ce dernier. 

Une autre complexité vient s'ajouter au modèle. Le service propose des logements à loyer intermédiaire (LLI) visant à loger des personnes qui n'auraient pas assez pour se loger dans le privée mais également trop pour postuler à un logement social, ces personnes ont des difficultés à se loger du fait de ce paradoxe puisqu'ils se situent dans l'entre-deux.

Le LLI plafonne les revenus selon la zone de la commune souhaitée, il existe troix zones à l'échelle de l'île-de-france et quatre à l'échelle nationale, mais aussi par la configuration familiale et conjugale qui prend en compte le nombre de personnes à charges. 

Premièrement il faut identifier la zone de la commune souhaitée, puis la composition familiale du demandeur afin d'identifier le plafond de revenus auquel il est soumis. Si le demandeur touche au-dessus, il ne peut prétendre à un logement LLI dans cette commune mais peut prétendre à un autre dans une autre zone. Il faut également regarder si le loyer proposé correspond à moins de 30% du salaire du demandeur. Ensuite, il faut créer une variable dichotomique/booléenne : si le demandeur perçoit un salaire en dessous du plafond LLI et que le loyer représente 30% ou moins de son salaire alors on lui attribue la note de 1, dans le cas où le demandeur n'entre pas dans ces catégories, on lui attribue un 0.

Sachant que les demandeurs peuvent émettre jusqu'à 10 souhaits en ce qui concerne la commune, il faut créer cette variable LLI autant qu'il y a de communes souhaitées. 
 





