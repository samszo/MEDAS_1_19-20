-- MySQL Script generated by MySQL Workbench
-- Wed Apr 22 22:49:59 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Fidelite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Fidelite` (
  `idFidelite` INT NOT NULL,
  `DateFidelite` DATE NULL,
  `Points` FLOAT NULL,
  `NiveauFidelite` VARCHAR(50) NULL,
  PRIMARY KEY (`idFidelite`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Client` (
  `idClient` INT NOT NULL,
  `Nom` VARCHAR(25) NULL,
  `Prenom` VARCHAR(25) NULL,
  `DateNaissance` DATE NULL,
  `Telephone` VARCHAR(12) NULL,
  `AdresseMail` VARCHAR(50) NULL,
  `Genre` VARCHAR(10) NULL,
  `Fidelite_idFidelite` INT NOT NULL,
  PRIMARY KEY (`idClient`),
  INDEX `fk_Client_Fidélité1_idx` (`Fidelite_idFidelite` ASC) ,
  CONSTRAINT `fk_Client_Fidélité1`
    FOREIGN KEY (`Fidelite_idFidelite`)
    REFERENCES `mydb`.`Fidelite` (`idFidelite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Produit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Produit` (
  `idProduit` INT NOT NULL,
  `NomProduit` VARCHAR(50) NULL,
  `Prix` FLOAT NULL,
  PRIMARY KEY (`idProduit`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Commande` (
  `idCommande` INT NOT NULL,
  `NombreProduit` FLOAT NULL,
  `PrixHT` FLOAT NULL,
  `PrixTTC` FLOAT NULL,
  `DateCommande` DATE NULL,
  `Client_idClient` INT NOT NULL,
  PRIMARY KEY (`idCommande`, `Client_idClient`),
  INDEX `fk_Commande_Client1_idx` (`Client_idClient` ASC) ,
  CONSTRAINT `fk_Commande_Client1`
    FOREIGN KEY (`Client_idClient`)
    REFERENCES `mydb`.`Client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Adresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Adresse` (
  `idAdresse` INT NOT NULL,
  `NumRue` VARCHAR(10) NULL,
  `Rue` VARCHAR(50) NULL,
  `CodePostal` VARCHAR(5) NULL,
  `Ville` VARCHAR(50) NULL,
  PRIMARY KEY (`idAdresse`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Client_has_Adresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Client_has_Adresse` (
  `Client_idClient` INT NOT NULL,
  `Adresse_idAdresse` INT NOT NULL,
  PRIMARY KEY (`Client_idClient`, `Adresse_idAdresse`),
  INDEX `fk_Client_has_Adresse_Adresse1_idx` (`Adresse_idAdresse` ASC) ,
  INDEX `fk_Client_has_Adresse_Client_idx` (`Client_idClient` ASC) ,
  CONSTRAINT `fk_Client_has_Adresse_Client`
    FOREIGN KEY (`Client_idClient`)
    REFERENCES `mydb`.`Client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Client_has_Adresse_Adresse1`
    FOREIGN KEY (`Adresse_idAdresse`)
    REFERENCES `mydb`.`Adresse` (`idAdresse`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Produit_has_Commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Produit_has_Commande` (
  `Produit_idProduit` INT NOT NULL,
  `Commande_idCommande` INT NOT NULL,
  `Commande_Client_idClient` INT NOT NULL,
  PRIMARY KEY (`Produit_idProduit`, `Commande_idCommande`, `Commande_Client_idClient`),
  INDEX `fk_Produit_has_Commande_Commande1_idx` (`Commande_idCommande` ASC, `Commande_Client_idClient` ASC) ,
  INDEX `fk_Produit_has_Commande_Produit1_idx` (`Produit_idProduit` ASC) ,
  CONSTRAINT `fk_Produit_has_Commande_Produit1`
    FOREIGN KEY (`Produit_idProduit`)
    REFERENCES `mydb`.`Produit` (`idProduit`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produit_has_Commande_Commande1`
    FOREIGN KEY (`Commande_idCommande` , `Commande_Client_idClient`)
    REFERENCES `mydb`.`Commande` (`idCommande` , `Client_idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Commande_has_Fidelite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Commande_has_Fidelite` (
  `Commande_idCommande` INT NOT NULL,
  `Commande_Client_idClient` INT NOT NULL,
  `Fidelite_idFidelite` INT NOT NULL,
  PRIMARY KEY (`Commande_idCommande`, `Commande_Client_idClient`, `Fidelite_idFidelite`),
  INDEX `fk_Commande_has_Fidelite_Fidelite1_idx` (`Fidelite_idFidelite` ASC) ,
  INDEX `fk_Commande_has_Fidelite_Commande1_idx` (`Commande_idCommande` ASC, `Commande_Client_idClient` ASC) ,
  CONSTRAINT `fk_Commande_has_Fidelite_Commande1`
    FOREIGN KEY (`Commande_idCommande` , `Commande_Client_idClient`)
    REFERENCES `mydb`.`Commande` (`idCommande` , `Client_idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Commande_has_Fidelite_Fidelite1`
    FOREIGN KEY (`Fidelite_idFidelite`)
    REFERENCES `mydb`.`Fidelite` (`idFidelite`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
