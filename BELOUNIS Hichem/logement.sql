CREATE TABLE `logements`.`RH` ( `agent_id` VARCHAR(16) NOT NULL , `agent_immatriculation` VARCHAR(16) NOT NULL , `agent_contrat_date_debut` DATE NOT NULL , `agent_situation_famille` VARCHAR(16) NOT NULL , `agent_conjoint_id` VARCHAR(16) NOT NULL , `agent_lpu_insee` VARCHAR(16) NOT NULL , `agent_type_contrat` VARCHAR(16) NOT NULL , `agent_college` VARCHAR(16) NOT NULL , `agent_famille_metier` VARCHAR(16) NOT NULL , `agent_adresse_insee` VARCHAR(16) NOT NULL , `agent_logement_code` VARCHAR(16) NOT NULL , `enf_moins_18` INT(16) NOT NULL , `enf_18_23` INT(16) NOT NULL , `enf_plus_23` INT(16) NOT NULL , `remu_2018` INT(16) NOT NULL , `remu_2019` INT(16) NOT NULL , `remu_2020` INT(16) NOT NULL , `remu_2021` INT(16) NOT NULL ) ENGINE = InnoDB;

CREATE TABLE `logements`.`demandes logements` ( `id_demande` VARCHAR(16) NOT NULL , `agent_id` VARCHAR(16) NOT NULL , `date_depot` DATE NOT NULL , `date_validation` DATE NOT NULL , `nb_personnes_loger` INT(16) NOT NULL , `type_1_logement` VARCHAR(16) NOT NULL , `type_2_logement` VARCHAR(16) NOT NULL , `code_insee_1commune_souhait` VARCHAR(16) NOT NULL , `code_insee_2commune_souhait` VARCHAR(16) NOT NULL , `code_insee_3commune_souhait` VARCHAR(16) NOT NULL , `code_insee_4commune_souhait` VARCHAR(16) NOT NULL , `code_insee_5commune_souhait` VARCHAR(16) NOT NULL , `code_insee_6commune_souhait` VARCHAR(16) NOT NULL , `code_insee_7commune_souhait` VARCHAR(16) NOT NULL , `motif_demande` VARCHAR(16) NOT NULL , `statut_logement_actuel` VARCHAR(16) NOT NULL , `montant_max_logement` INT(16) NOT NULL , `exclusion_etage` BOOLEAN NOT NULL , `exclusion_rdc` BOOLEAN NOT NULL , `nb_chambres` INT(1) NOT NULL , `ascenseur` BOOLEAN NOT NULL , `cotation` INT(4) NOT NULL ) ENGINE = InnoDB;

ALTER TABLE `demandes_logements` ADD CONSTRAINT `agent_id` FOREIGN KEY (`agent_id`) REFERENCES `rh`(`agent_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `demandes_logements` ADD PRIMARY KEY(`id_demande`);
































