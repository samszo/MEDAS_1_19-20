-- MySQL Script generated by MySQL Workbench
-- Wed Apr 22 22:29:37 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema bdd_vente
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema bdd_vente
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bdd_vente` DEFAULT CHARACTER SET utf8mb4 ;
USE `bdd_vente` ;

-- -----------------------------------------------------
-- Table `bdd_vente`.`adresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdd_vente`.`adresse` (
  `id_adresse` INT(11) NOT NULL,
  `rue` VARCHAR(45) NOT NULL,
  `ville` VARCHAR(45) NOT NULL,
  `code_postal` VARCHAR(45) NOT NULL,
  `pays` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_adresse`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bdd_vente`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdd_vente`.`client` (
  `id_client` INT(11) NOT NULL,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `genre` INT(11) NOT NULL,
  `date_naissance` DATE NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_client`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bdd_vente`.`facture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdd_vente`.`facture` (
  `id_facture` INT(11) NOT NULL,
  `prix_ht` FLOAT NOT NULL,
  `prix_ttc` FLOAT NOT NULL,
  PRIMARY KEY (`id_facture`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bdd_vente`.`commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdd_vente`.`commande` (
  `num_commande` INT(11) NOT NULL,
  `date_commande` DATE NOT NULL,
  `montant` FLOAT NOT NULL,
  `id_client` INT(11) NOT NULL,
  `id_facture` INT(11) NOT NULL,
  PRIMARY KEY (`num_commande`),
  INDEX `fk_commande_client_idx` (`id_client` ASC) VISIBLE,
  INDEX `fk_commande_facture1_idx` (`id_facture` ASC) VISIBLE,
  CONSTRAINT `fk_commande_client`
    FOREIGN KEY (`id_client`)
    REFERENCES `bdd_vente`.`client` (`id_client`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_commande_facture1`
    FOREIGN KEY (`id_facture`)
    REFERENCES `bdd_vente`.`facture` (`id_facture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bdd_vente`.`livraison`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdd_vente`.`livraison` (
  `num_livraison` INT(11) NOT NULL,
  `date_livraison` DATE NOT NULL,
  `livreur` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`num_livraison`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bdd_vente`.`produit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdd_vente`.`produit` (
  `id_produit` INT(11) NOT NULL,
  `marque` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NOT NULL,
  `fournisseur` VARCHAR(45) NOT NULL,
  `prix_unitaire` FLOAT NOT NULL,
  `informations` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_produit`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bdd_vente`.`commande_livraison`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdd_vente`.`commande_livraison` (
  `num_commande` INT(11) NOT NULL,
  `num_livraison` INT(11) NOT NULL,
  PRIMARY KEY (`num_commande`, `num_livraison`),
  INDEX `fk_commande_has_livraison_livraison1_idx` (`num_livraison` ASC) VISIBLE,
  INDEX `fk_commande_has_livraison_commande1_idx` (`num_commande` ASC) VISIBLE,
  CONSTRAINT `fk_commande_has_livraison_commande1`
    FOREIGN KEY (`num_commande`)
    REFERENCES `bdd_vente`.`commande` (`num_commande`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_commande_has_livraison_livraison1`
    FOREIGN KEY (`num_livraison`)
    REFERENCES `bdd_vente`.`livraison` (`num_livraison`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bdd_vente`.`commande_produit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdd_vente`.`commande_produit` (
  `num_commande` INT(11) NOT NULL,
  `id_produit` INT(11) NOT NULL,
  `quantitée` INT NOT NULL,
  PRIMARY KEY (`num_commande`, `id_produit`),
  INDEX `fk_commande_has_produit_produit1_idx` (`id_produit` ASC) VISIBLE,
  INDEX `fk_commande_has_produit_commande1_idx` (`num_commande` ASC) VISIBLE,
  CONSTRAINT `fk_commande_has_produit_commande1`
    FOREIGN KEY (`num_commande`)
    REFERENCES `bdd_vente`.`commande` (`num_commande`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_commande_has_produit_produit1`
    FOREIGN KEY (`id_produit`)
    REFERENCES `bdd_vente`.`produit` (`id_produit`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `bdd_vente`.`client_has_adresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bdd_vente`.`client_has_adresse` (
  `client_id_client` INT(11) NOT NULL,
  `id_adresse` INT(11) NOT NULL,
  PRIMARY KEY (`client_id_client`, `id_adresse`),
  INDEX `fk_client_has_adresse_adresse1_idx` (`id_adresse` ASC) VISIBLE,
  INDEX `fk_client_has_adresse_client1_idx` (`client_id_client` ASC) VISIBLE,
  CONSTRAINT `fk_client_has_adresse_client1`
    FOREIGN KEY (`client_id_client`)
    REFERENCES `bdd_vente`.`client` (`id_client`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_client_has_adresse_adresse1`
    FOREIGN KEY (`id_adresse`)
    REFERENCES `bdd_vente`.`adresse` (`id_adresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
