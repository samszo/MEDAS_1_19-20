<b>Description des tables :</b>

<b>Table professeur :</b> 

on y trouve  
* NoProfesseur: numero de reference du professeur  
* NomProfesseur: nom du professeur  
* PrenomProfesseur: prenom du professeur  

<b>Table stage:</b>

* NoStage: numero de réference du stage  
* NomDuStage: nom du stage(le but du stage)  

<b>Table session:</b>

* NoSession : numero de réference de la session de stage  
* DateDeb : date de debut session de stage
* DateFin : date de fin session de stage
* NoStage : numero de réference du stage associé  

<b>Table stagiaire:</b>

* NoStagiaire: numero de réference du stagiaire  
* NomStagiaire: nom du stagiaire  
* PrenomStagiaire: prenom du stagiaire  
* DateNaissance: date de naissance du stagiaire  

<b>Table module:</b>

* NoModule numero de réference du module  
* TitreModule: titre du module 

<b>Table comporte1:</b>

* NoModule :numero de réference du module  
* NoStage: numero de réference du stage  

<b>Table prestation:</b>

* NoPresta: numero de réference de la prestation  
* DateDeb: date de debut de la prestation  
* DateFin : date de fin de la prestation  
* NbrH : nombre d'heure à effectuer
* NoModule :numero de réference du module  
* NoSession: numero de réference de la session de stage  
* NoProfesseur: numero de reference du professeur  

<b>Table inscription:</b>

* NoStagiaire: numero de réference du stagiaire   
* NoSession : numero de réference de la session de stage  


Ici, nous nous trouvons face à toute les intermediaires que prends en compte un contrat de stage ou d'apprentissage au niveau de l'école.
Lorsqu'un éleve à trouvé un stage, il lance alors toute les demarches a faire.

<b>Table professeur :</b> 
Cette table permet de renseigner le numéro de référence du professeur, nom et prenom. il joue le role de référent stage coté école. l'élève lui fera des retour.

<b>Table stage:</b>
Cette table permet de renseigner la fonction du stage et on lui donnera un numéro de référence. pour pouvoir le classer.

<b>Table session:</b>
Cette table permet de donnés des renseignement complémentaire, on y trouve  le debut et fin du stage, la référence de session et de stage.

<b>Table stagiaire:</b>
Cette table permet de renseigner les informations identitaire du stagiaire  nom, prenom,age. on lui affecte alors un numero de stagiaire oui il se peut qu'il est est des gens qui ont le même nom, prénom, du coup le numero de stagiaire permet de rapporte un meilleur classification.

<b>Table module:</b>
Cette table permet de renseigner le numéro de module et le nom du module au quel le stage est lié.

<b>Table comporte1:</b>
Cette table permet de stocker le numero de stage et le module. Il comporte le dossier du stage pour le donner a un examinateur.

<b>Table prestation:</b>
Cette table permet de renseigner tout les données comptabilité, gestion , pour l'ecole on y trouve le nombre d'heure a effectue , le debut et fin de stage, le responsale eleve, le numero de session , de module et un numero de presation pour le classer.

<b>Table inscription:</b>
cette table permet d'enregistrer l'élève pour l'examen de cette session.

<b>Relations entre les tables :</b>
les Relations de tables sont en (1,0):  
prestation -> module  
prestation -> professeur  
prestation -> session  
comporte1 -> stage  
comporte1 -> module  
session -> stage    
inscription -> stagiaire  
isncription -> session  

