# Description de la basse de données société de cinéma qui gère tous simplement les séances de cinéma pour l'évenementiel.

Pour information: modele.svg et le modele.sql ont été créés avec MySQL Workbench.

# Description des tables :

## typeFilm 
Le but de cette table est de d'archiver tous les types de film.

## Film
Cette table est l'objet d'un film et il est relié avec son type de film 

## cinema 
cette table archive tous les cinema du parc

## salle 
cette table archive toutes les salles de cinema existante


## Personnel
Cette table mets en avant le personnel 

## reserverSalle 
Cette va servir à faire le lien entre une salle et un film pour un scéance.

## affecter
Cette table va servir à lier la table Personnel et la table reserverSalle.

# MLD :

typefilm (idtypeFilm , desTypeFilm)
Clé primaire : idtypeFilm

Film (idFilm , nomFilm Durée, typeFilm_idtypeFilm)
Clé primaire : idFilm
Clé étrangère : typeFilm_idtypeFilm qui référence idtypeFilm de la table typefilm

Personnel (idPersonnel, Nom, Prénom, DateNaiss)
Clé primaire : idPersonnel

Cinema (idCinema, nomCinema, Adresse)
Clé primaire : idCinema

Salle (idSalle,nomSalle, nbrPlace , Cinema_idSeance)
Clé primaire : idSalle
Clé étrangère : Cinema_idSeance qui référence idCinema de la table Cinema  

ReserveSalle (idReserverSalle dateDebProj,dateFinProj, Salle_idSalle , Film_idFilm)
Clé primaire : idReserverSalle
Clé étrangère : Salle_idSalle qui référence idSalle de la table Salle  
Clé étrangère : Film_idFilm qui référence idFilm de la table Film 

Affecter (idAffecter, ReserveSalle_idReserverSalle, Personnel_idPersonnel,)
Clé primaire : idAffecter
Clé étrangère : Personnel_idPersonnel qui référence idPersonne de la table Personnel  
Clé étrangère : ReserveSalle_idReserverSalle qui référence idReserverSalle de la table ReserveSalle 

 
