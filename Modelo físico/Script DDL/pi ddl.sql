-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pi
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pi
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `pi` ;

-- -----------------------------------------------------
-- Table `pi`.`doador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pi`.`doador` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `pontos` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pi`.`brinde`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pi`.`brinde` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `doadorID` INT NULL DEFAULT NULL,
  `pontosNecessarios` INT NULL DEFAULT NULL,
  `descricao` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `doadorID` (`doadorID` ASC),
  CONSTRAINT `brinde_ibfk_1`
    FOREIGN KEY (`doadorID`)
    REFERENCES `pi`.`doador` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pi`.`receptor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pi`.`receptor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(50) NOT NULL,
  `estadoNecessidade` VARCHAR(255) NULL DEFAULT NULL,
  `idUltimaDoacaoRecebida` INT NULL DEFAULT NULL,
  `dataUltimaDoacaoRecebida` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pi`.`doacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pi`.`doacao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `doadorID` INT NOT NULL,
  `receptorID` INT NOT NULL,
  `tipoItem` VARCHAR(255) NULL DEFAULT NULL,
  `estadoItem` VARCHAR(255) NULL DEFAULT NULL,
  `dataDoacao` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `doadorID` (`doadorID` ASC),
  INDEX `receptorID` (`receptorID` ASC),
  CONSTRAINT `doacao_ibfk_1`
    FOREIGN KEY (`doadorID`)
    REFERENCES `pi`.`doador` (`id`),
  CONSTRAINT `doacao_ibfk_2`
    FOREIGN KEY (`receptorID`)
    REFERENCES `pi`.`receptor` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `pi`.`Endereço`
-- -----------------------------------------------------

create table if not exists `pi`.`endereco`(
	  `id` INT NOT NULL AUTO_INCREMENT,
      `doadorID` INT NOT NULL,
	   `receptorID` INT NOT NULL,
      `logradouro` VARCHAR(150),
      `numero` VARCHAR(10),
      `complemento` VARCHAR(50),
      `cidade` VARCHAR(100),
      `estado` CHAR(2),  #sigla 
      `bairro` VARCHAR(100),
      `cep` CHAR(9),
       PRIMARY KEY(`id`),
       
      CONSTRAINT `doador_endereco_fk`
      FOREIGN KEY(`doadorID`) 
      REFERENCES `pi`.`doador`(`id`),
      
      CONSTRAINT `receptor_endereco_fk`
      FOREIGN KEY(`receptorID`) 
      REFERENCES `pi`.`receptor`(`id`)
)DEFAULT CHARACTER SET UTF8
 DEFAULT CHARSET = UTF8
 ENGINE = InnoDB;
 
 -- -----------------------------------------------------
-- Table `pi`.`Contato`
-- -----------------------------------------------------
 
 CREATE TABLE IF NOT EXISTS `pi`.`contato`(
      `id` int not null auto_increment,
	  `doadorID` INT NOT NULL,
	 `receptorID` INT NOT NULL,
      `numero` VARCHAR(12) NOT NULL,
     `email` VARCHAR(250) NULL DEFAULT NULL,
      `ddd` CHAR(2) NOT NULL,
      `tipo` ENUM('RES','CEL') NOT NULL, # RES -> residencial, CEL -> celular
      PRIMARY KEY(`id`),

      CONSTRAINT `doador_contato_fk`
      FOREIGN KEY(`doadorID`) 
      REFERENCES `pi`.`doador`(`id`),
      
	  CONSTRAINT `receptor_contato_fk`
      FOREIGN KEY(`receptorID`)
      REFERENCES `pi`.`receptor`(`id`)
 )DEFAULT CHARACTER SET UTF8
  DEFAULT CHARSET = UTF8
  ENGINE = InnoDB;

 

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;






