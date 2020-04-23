-- MySQL Script generated by MySQL Workbench
-- Thu Apr 23 08:59:20 2020
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
-- Table `mydb`.`Oeuvres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Oeuvres` (
  `ID` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Année de parution` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Prix Nobel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Prix Nobel` (
  `ID` INT NOT NULL,
  `Année d'obtention` VARCHAR(45) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Auteurs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Auteurs` (
  `ID` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Prénom` VARCHAR(45) NULL,
  `Naissance` VARCHAR(45) NULL,
  `Décès` VARCHAR(45) NULL,
  `Prix Nobel_ID` INT NOT NULL,
  PRIMARY KEY (`ID`, `Prix Nobel_ID`),
  INDEX `fk_Auteurs_Prix Nobel1_idx` (`Prix Nobel_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Auteurs_Prix Nobel1`
    FOREIGN KEY (`Prix Nobel_ID`)
    REFERENCES `mydb`.`Prix Nobel` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin2;


-- -----------------------------------------------------
-- Table `mydb`.`Auteur a écrit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Auteur a écrit` (
  `Oeuvres_ID` INT NOT NULL,
  `Auteurs_ID` INT NOT NULL,
  PRIMARY KEY (`Oeuvres_ID`, `Auteurs_ID`),
  INDEX `fk_Oeuvres_has_Auteurs_Auteurs1_idx` (`Auteurs_ID` ASC) VISIBLE,
  INDEX `fk_Oeuvres_has_Auteurs_Oeuvres_idx` (`Oeuvres_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Oeuvres_has_Auteurs_Oeuvres`
    FOREIGN KEY (`Oeuvres_ID`)
    REFERENCES `mydb`.`Oeuvres` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Oeuvres_has_Auteurs_Auteurs1`
    FOREIGN KEY (`Auteurs_ID`)
    REFERENCES `mydb`.`Auteurs` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
