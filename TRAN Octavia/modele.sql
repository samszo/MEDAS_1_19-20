-- MySQL Script generated by MySQL Workbench
-- Wed Apr 22 21:58:41 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Especes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Especes` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Especes` (
  `id_espece` INT NOT NULL,
  `nom` VARCHAR(45) NOT NULL,
  `description` LONGTEXT NULL,
  PRIMARY KEY (`id_espece`),
  UNIQUE INDEX `id_especes_UNIQUE` (`id_espece` ASC)
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Secteurs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Secteurs` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Secteurs` (
  `id_secteur` INT NOT NULL,
  `nom` VARCHAR(45) NOT NULL,
  `description` LONGTEXT NULL,
  PRIMARY KEY (`id_secteur`),
  UNIQUE INDEX `id_secteur_UNIQUE` (`id_secteur` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Enclos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Enclos` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Enclos` (
  `id_enclos` INT NOT NULL,
  `superficie` INT NOT NULL,
  `Animaux_id_animal` INT NOT NULL,
  `Secteurs_id_secteur` INT NOT NULL,
  PRIMARY KEY (`id_enclos`, `Animaux_id_animal`, `Secteurs_id_secteur`),
  UNIQUE INDEX `id_enclos_UNIQUE` (`id_enclos` ASC) ,
  INDEX `fk_Enclos_Secteurs1_idx` (`Secteurs_id_secteur` ASC) ,
  CONSTRAINT `fk_Enclos_Secteurs1`
    FOREIGN KEY (`Secteurs_id_secteur`)
    REFERENCES `mydb`.`Secteurs` (`id_secteur`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Zoos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Zoos` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Zoos` (
  `id_zoo` INT NOT NULL,
  `nom` VARCHAR(45) NOT NULL,
  `pays` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_zoo`),
  UNIQUE INDEX `id_zoo_UNIQUE` (`id_zoo` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Animaux`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Animaux` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Animaux` (
  `id_animal` INT NOT NULL,
  `nom` VARCHAR(45) NOT NULL,
  `date_naissance` DATE NOT NULL,
  `sexe` TINYINT NOT NULL,
  `taille` INT NOT NULL,
  `Especes_id_espece` INT NOT NULL,
  `Enclos_id_enclos1` INT NULL,
  `Zoos_id_zoo_origine` INT NOT NULL,
  `Zoos_id_zoo_courant` INT NOT NULL,
  PRIMARY KEY (`id_animal`, `Especes_id_espece`),
  UNIQUE INDEX `id_animal_UNIQUE` (`id_animal` ASC) ,
  INDEX `fk_Animaux_Especes1_idx` (`Especes_id_espece` ASC) ,
  INDEX `fk_Animaux_Enclos1_idx` (`Enclos_id_enclos1` ASC) ,
  INDEX `fk_Animaux_Zoos2_idx` (`Zoos_id_zoo_origine` ASC) ,
  INDEX `fk_Animaux_Zoos1_idx` (`Zoos_id_zoo_courant` ASC) ,
  CONSTRAINT `fk_Animaux_Especes1`
    FOREIGN KEY (`Especes_id_espece`)
    REFERENCES `mydb`.`Especes` (`id_espece`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Animaux_Enclos1`
    FOREIGN KEY (`Enclos_id_enclos1`)
    REFERENCES `mydb`.`Enclos` (`id_enclos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Animaux_Zoos2`
    FOREIGN KEY (`Zoos_id_zoo_origine`)
    REFERENCES `mydb`.`Zoos` (`id_zoo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Animaux_Zoos1`
    FOREIGN KEY (`Zoos_id_zoo_courant`)
    REFERENCES `mydb`.`Zoos` (`id_zoo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Soignants`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Soignants` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Soignants` (
  `id_soignant` INT NOT NULL,
  `nom` VARCHAR(45) NOT NULL,
  `date_naissance` DATE NOT NULL,
  `date_recrutement` DATE NOT NULL,
  `date_expiration` DATE NULL,
  PRIMARY KEY (`id_soignant`),
  UNIQUE INDEX `id_soignant_UNIQUE` (`id_soignant` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Soignants_has_Animaux`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Soignants_has_Animaux` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Soignants_has_Animaux` (
  `Soignants_id_soignant` INT NOT NULL,
  `Animaux_id_animal` INT NOT NULL,
  PRIMARY KEY (`Soignants_id_soignant`, `Animaux_id_animal`),
  INDEX `fk_Soignants_has_Animaux_Animaux1_idx` (`Animaux_id_animal` ASC) ,
  INDEX `fk_Soignants_has_Animaux_Soignants1_idx` (`Soignants_id_soignant` ASC) ,
  CONSTRAINT `fk_Soignants_has_Animaux_Soignants1`
    FOREIGN KEY (`Soignants_id_soignant`)
    REFERENCES `mydb`.`Soignants` (`id_soignant`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Soignants_has_Animaux_Animaux1`
    FOREIGN KEY (`Animaux_id_animal`)
    REFERENCES `mydb`.`Animaux` (`id_animal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
