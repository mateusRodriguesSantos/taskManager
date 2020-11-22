-- MySQL Script generated by MySQL Workbench
-- Wed Nov 18 11:49:47 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema taskManager
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema taskManager
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `taskManager` DEFAULT CHARACTER SET utf8 ;
USE `taskManager` ;

-- -----------------------------------------------------
-- Table `taskManager`.`Task`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `taskManager`.`Task` (
  `idTask` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `prioridade` INT NOT NULL,
  `descricao` VARCHAR(255) NULL,
  `limite` DATE NULL,
  PRIMARY KEY (`idTask`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `taskManager`.`ItemChecklist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `taskManager`.`ItemChecklist` (
  `idItem` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `Task_idTask` INT NOT NULL,
  PRIMARY KEY (`idItem`),
  INDEX `fk_ItemChecklist_Task_idx` (`Task_idTask` ASC) VISIBLE,
  CONSTRAINT `fk_ItemChecklist_Task`
    FOREIGN KEY (`Task_idTask`)
    REFERENCES `taskManager`.`Task` (`idTask`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
