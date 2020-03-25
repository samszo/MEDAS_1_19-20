Create table stagiaire(

NoStagiaire integer,
NomStagiaire varchar(15),
PrenomStagiaire varchar(15),
DateNaissance DATETIME,

CONSTRAINT PK_NoStagiaire PRIMARY KEY (NoStagiaire)

);



create table stage (

NoStage integer,
NomDuStage varchar (15),

CONSTRAINT PK_NoStage PRIMARY KEY(NoStage)

);





CREATE TABLE session(

NoSession integer,
DateDeb DATETIME,
DateFin DATETIME,
NoStage integer,

CONSTRAINT PK_NoSession PRIMARY KEY (NoSession),

CONSTRAINT FK_session_NoStage_stage FOREIGN KEY (NoStage) REFERENCES stage(NoStage)

);



Create table module (

NoModule integer,
TitreModule varchar(15),

CONSTRAINT PK_NoModule PRIMARY KEY (NoModule)

);



Create TABLE Comporte1(

NoModule integer,
NoStage integer,

CONSTRAINT PK_Comporte1 PRIMARY KEY(NoModule,NoStage),

CONSTRAINT FK_comporte_NoModule_moduleFOREIGN KEY(NoModule) REFERENCES module(NoModule) ON DELETE CASCADE ON UPDATE CASCADE,

CONSTRAINT FK_comporte_NoStage_stage FOREIGN KEY(NoStage) REFERENCES stage(NoStage) ON DELETE CASCADE ON UPDATE CASCADE

);

CREATE TABLE professeur(

NoProfesseur integer,
NomProfesseur varchar(15),
PrenomProfesseur varchar(15),

CONSTRAINT PK_NoProf PRIMARY KEY(NoProfesseur)

);



create TABLE prestation(

NoPresta integer,
DateDeb DATETIME,
DateFin DATETIME,
NbrH integer DEFAULT 1,
NoModule integer,
NoSession integer,
NoProfesseur integer,

CONSTRAINT CHCK_NbrH CHECK(NbrH >1),

CONSTRAINT PK_Presta PRIMARY KEY(NoPresta,NoProfesseur),

CONSTRAINT FK_presta_NoModule_module FOREIGN KEY(NoModule) REFERENCES module(NoModule),

CONSTRAINT FK_presta_NoSession_session FOREIGN KEY(NoSession) REFERENCES session(NoSession)



);



create TABLE inscription(

NoStagiaIre integer,
NoSession integer,

CONSTRAINT PK_inscrip PRIMARY KEY(NoStagiaire,NoSession),

CONSTRAINT FK_inscrip_NoStagiaire_stagiaireFOREIGN KEY(NoStagiaire) REFERENCES stagiaire(NoStagiaire) ON DELETE CASCADE on UPDATE CASCADE,

CONSTRAINT FK_inscrip_NoSession_session FOREIGN KEY(NoSession) REFERENCES session(NoSession) ON DELETE CASCADE on UPDATE CASCADE

);

