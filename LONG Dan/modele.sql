-- MySQL Script generated by MySQL Workbench
-- Wed Apr 22 18:50:45 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Les vainqueurs de la Ligue des Champions
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Les vainqueurs de la Ligue des Champions
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Les vainqueurs de la Ligue des Champions` DEFAULT CHARACTER SET utf8 ;
USE `Les vainqueurs de la Ligue des Champions` ;

-- -----------------------------------------------------
-- Table `Les vainqueurs de la Ligue des Champions`.`Clubs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Les vainqueurs de la Ligue des Champions`.`Clubs` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Surnom` VARCHAR(45) NULL,
  `Fondation` DATETIME NULL,
  `Couleur` VARCHAR(45) NULL,
  `Pays` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Les vainqueurs de la Ligue des Champions`.`Ligue_des_Champions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Les vainqueurs de la Ligue des Champions`.`Ligue_des_Champions` (
  `id` INT NOT NULL,
  `Edition` DATETIME NULL,
  `Match finale` VARCHAR(45) NULL,
  `Score` VARCHAR(45) NULL,
  `Lieu de la finale` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Les vainqueurs de la Ligue des Champions`.`qui_ont_gagné`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Les vainqueurs de la Ligue des Champions`.`qui_ont_gagné` (
  `Clubs_id` INT NOT NULL,
  `Ligue_des_Champions_id` INT NOT NULL,
  PRIMARY KEY (`Clubs_id`, `Ligue_des_Champions_id`),
  INDEX `fk_Clubs_has_Ligue des Champions_Ligue des Champions1_idx` (`Ligue_des_Champions_id` ASC) VISIBLE,
  INDEX `fk_Clubs_has_Ligue des Champions_Clubs_idx` (`Clubs_id` ASC) VISIBLE,
  CONSTRAINT `fk_Clubs_has_Ligue des Champions_Clubs`
    FOREIGN KEY (`Clubs_id`)
    REFERENCES `Les vainqueurs de la Ligue des Champions`.`Clubs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Clubs_has_Ligue des Champions_Ligue des Champions1`
    FOREIGN KEY (`Ligue_des_Champions_id`)
    REFERENCES `Les vainqueurs de la Ligue des Champions`.`Ligue_des_Champions` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Les vainqueurs de la Ligue des Champions`.`Joueurs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Les vainqueurs de la Ligue des Champions`.`Joueurs` (
  `id` INT NOT NULL,
  `Nom` VARCHAR(45) NULL,
  `Prenom` VARCHAR(45) NULL,
  `Date de naissance` VARCHAR(45) NULL,
  `Club` VARCHAR(45) NULL,
  `Nationalite` VARCHAR(45) NULL,
  `Poste` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Les vainqueurs de la Ligue des Champions`.`Possède/Appartient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Les vainqueurs de la Ligue des Champions`.`Possède/Appartient` (
  `Joueurs_id` INT NOT NULL,
  `Clubs_id` INT NOT NULL,
  PRIMARY KEY (`Joueurs_id`, `Clubs_id`),
  INDEX `fk_Appartient_Clubs1_idx` (`Clubs_id` ASC) VISIBLE,
  CONSTRAINT `fk_Appartient_Joueurs1`
    FOREIGN KEY (`Joueurs_id`)
    REFERENCES `Les vainqueurs de la Ligue des Champions`.`Joueurs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Appartient_Clubs1`
    FOREIGN KEY (`Clubs_id`)
    REFERENCES `Les vainqueurs de la Ligue des Champions`.`Clubs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Les vainqueurs de la Ligue des Champions`.`Joueurs_has_Ligue_des_Champions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Les vainqueurs de la Ligue des Champions`.`Joueurs_has_Ligue_des_Champions` (
  `Joueurs_id` INT NOT NULL,
  `Ligue_des_Champions_id` INT NOT NULL,
  PRIMARY KEY (`Joueurs_id`, `Ligue_des_Champions_id`),
  INDEX `fk_Joueurs_has_Ligue_des_Champions_Ligue_des_Champions1_idx` (`Ligue_des_Champions_id` ASC) VISIBLE,
  INDEX `fk_Joueurs_has_Ligue_des_Champions_Joueurs1_idx` (`Joueurs_id` ASC) VISIBLE,
  CONSTRAINT `fk_Joueurs_has_Ligue_des_Champions_Joueurs1`
    FOREIGN KEY (`Joueurs_id`)
    REFERENCES `Les vainqueurs de la Ligue des Champions`.`Joueurs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Joueurs_has_Ligue_des_Champions_Ligue_des_Champions1`
    FOREIGN KEY (`Ligue_des_Champions_id`)
    REFERENCES `Les vainqueurs de la Ligue des Champions`.`Ligue_des_Champions` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
