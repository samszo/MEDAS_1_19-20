-- MySQL Script generated by MySQL Workbench
-- Thu Mar  5 11:22:12 2020
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
-- Table `mydb`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Client` (
  `idClient` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Prenom` VARCHAR(45) NULL,
  PRIMARY KEY (`idClient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Carte Fid`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Carte Fid` (
  `idCarte Fid` INT NOT NULL,
  `Type_Fid` VARCHAR(45) NULL,
  `Client_idClient` INT NOT NULL,
  PRIMARY KEY (`idCarte Fid`, `Client_idClient`),
  CONSTRAINT `fk_Carte Fid_Client1`
    FOREIGN KEY (`Client_idClient`)
    REFERENCES `mydb`.`Client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Train`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Train` (
  `idTrain` INT NOT NULL,
  `Nom_Train` VARCHAR(45) NULL,
  `Voiture_idVoiture` INT NOT NULL,
  PRIMARY KEY (`idTrain`, `Voiture_idVoiture`),
  CONSTRAINT `fk_Train_Voiture1`
    FOREIGN KEY (`Voiture_idVoiture`)
    REFERENCES `mydb`.`Voiture` (`idVoiture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Voiture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Voiture` (
  `idVoiture` INT NOT NULL,
  ` Nom_Voit` VARCHAR(45) NULL,
  `Train_idTrain` INT NOT NULL,
  `Train_Voiture_idVoiture` INT NOT NULL,
  `Voyage_idVoyage` INT NOT NULL,
  `Voyage_Voiture_idVoiture` INT NOT NULL,
  `Voyage_Voiture_Train_idTrain` INT NOT NULL,
  `Voyage_Voiture_Train_Voiture_idVoiture` INT NOT NULL,
  PRIMARY KEY (`idVoiture`, `Train_idTrain`, `Train_Voiture_idVoiture`, `Voyage_idVoyage`, `Voyage_Voiture_idVoiture`, `Voyage_Voiture_Train_idTrain`, `Voyage_Voiture_Train_Voiture_idVoiture`),
  CONSTRAINT `fk_Voiture_Train1`
    FOREIGN KEY (`Train_idTrain` , `Train_Voiture_idVoiture`)
    REFERENCES `mydb`.`Train` (`idTrain` , `Voiture_idVoiture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Voiture_Voyage1`
    FOREIGN KEY (`Voyage_idVoyage` , `Voyage_Voiture_idVoiture` , `Voyage_Voiture_Train_idTrain` , `Voyage_Voiture_Train_Voiture_idVoiture`)
    REFERENCES `mydb`.`Voyage` (`idVoyage` , `Voiture_idVoiture` , `Voiture_Train_idTrain` , `Voiture_Train_Voiture_idVoiture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Voyage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Voyage` (
  `idVoyage` INT NOT NULL,
  `Gare_Dep` VARCHAR(45) NULL,
  `Gare_Arr` VARCHAR(45) NULL,
  `Place` VARCHAR(45) NULL,
  `Classe` VARCHAR(45) NULL,
  `Voiture_idVoiture` INT NOT NULL,
  `Voiture_Train_idTrain` INT NOT NULL,
  `Voiture_Train_Voiture_idVoiture` INT NOT NULL,
  `Facture_idFacture` INT NOT NULL,
  `Facture_Voyage_idVoyage` INT NOT NULL,
  `Facture_Voyage_Voiture_idVoiture` INT NOT NULL,
  `Facture_Voyage_Voiture_Train_idTrain` INT NOT NULL,
  `Facture_Voyage_Voiture_Train_Voiture_idVoiture` INT NOT NULL,
  PRIMARY KEY (`idVoyage`, `Voiture_idVoiture`, `Voiture_Train_idTrain`, `Voiture_Train_Voiture_idVoiture`, `Facture_idFacture`, `Facture_Voyage_idVoyage`, `Facture_Voyage_Voiture_idVoiture`, `Facture_Voyage_Voiture_Train_idTrain`, `Facture_Voyage_Voiture_Train_Voiture_idVoiture`),
  CONSTRAINT `fk_Voyage_Voiture1`
    FOREIGN KEY (`Voiture_idVoiture` , `Voiture_Train_idTrain` , `Voiture_Train_Voiture_idVoiture`)
    REFERENCES `mydb`.`Voiture` (`idVoiture` , `Train_idTrain` , `Train_Voiture_idVoiture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Voyage_Facture1`
    FOREIGN KEY (`Facture_idFacture` , `Facture_Voyage_idVoyage` , `Facture_Voyage_Voiture_idVoiture` , `Facture_Voyage_Voiture_Train_idTrain` , `Facture_Voyage_Voiture_Train_Voiture_idVoiture`)
    REFERENCES `mydb`.`Facture` (`idFacture` , `Voyage_idVoyage` , `Voyage_Voiture_idVoiture` , `Voyage_Voiture_Train_idTrain` , `Voyage_Voiture_Train_Voiture_idVoiture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Facture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Facture` (
  `idFacture` INT NOT NULL,
  `Prix` FLOAT NULL,
  `Date` DATE NULL,
  `Promotion` FLOAT NULL,
  `Voyage_idVoyage` INT NOT NULL,
  `Voyage_Voiture_idVoiture` INT NOT NULL,
  `Voyage_Voiture_Train_idTrain` INT NOT NULL,
  `Voyage_Voiture_Train_Voiture_idVoiture` INT NOT NULL,
  PRIMARY KEY (`idFacture`, `Voyage_idVoyage`, `Voyage_Voiture_idVoiture`, `Voyage_Voiture_Train_idTrain`, `Voyage_Voiture_Train_Voiture_idVoiture`),
  CONSTRAINT `fk_Facture_Voyage1`
    FOREIGN KEY (`Voyage_idVoyage` , `Voyage_Voiture_idVoiture` , `Voyage_Voiture_Train_idTrain` , `Voyage_Voiture_Train_Voiture_idVoiture`)
    REFERENCES `mydb`.`Voyage` (`idVoyage` , `Voiture_idVoiture` , `Voiture_Train_idTrain` , `Voiture_Train_Voiture_idVoiture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Carte Fid_has_Facture`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Carte Fid_has_Facture` (
  `Carte Fid_idCarte Fid` INT NOT NULL,
  `Facture_idFacture` INT NOT NULL,
  `Facture_Voyage_idVoyage` INT NOT NULL,
  `Facture_Voyage_Voiture_idVoiture` INT NOT NULL,
  `Facture_Voyage_Voiture_Train_idTrain` INT NOT NULL,
  `Facture_Voyage_Voiture_Train_Voiture_idVoiture` INT NOT NULL,
  PRIMARY KEY (`Carte Fid_idCarte Fid`, `Facture_idFacture`, `Facture_Voyage_idVoyage`, `Facture_Voyage_Voiture_idVoiture`, `Facture_Voyage_Voiture_Train_idTrain`, `Facture_Voyage_Voiture_Train_Voiture_idVoiture`),
  CONSTRAINT `fk_Carte Fid_has_Facture_Carte Fid1`
    FOREIGN KEY (`Carte Fid_idCarte Fid`)
    REFERENCES `mydb`.`Carte Fid` (`idCarte Fid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carte Fid_has_Facture_Facture1`
    FOREIGN KEY (`Facture_idFacture` , `Facture_Voyage_idVoyage` , `Facture_Voyage_Voiture_idVoiture` , `Facture_Voyage_Voiture_Train_idTrain` , `Facture_Voyage_Voiture_Train_Voiture_idVoiture`)
    REFERENCES `mydb`.`Facture` (`idFacture` , `Voyage_idVoyage` , `Voyage_Voiture_idVoiture` , `Voyage_Voiture_Train_idTrain` , `Voyage_Voiture_Train_Voiture_idVoiture`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;