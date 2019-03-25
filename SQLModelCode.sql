-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema modelatgebbddFinal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema modelatgebbddFinal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `modelatgebbddFinal` DEFAULT CHARACTER SET utf8 ;
USE `modelatgebbddFinal` ;

-- -----------------------------------------------------
-- Table `modelatgebbddFinal`.`Proveedors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelatgebbddFinal`.`Proveedors` (
  `idProveedors` INT NOT NULL AUTO_INCREMENT,
  `carrer` VARCHAR(45) NULL,
  `numero` INT NULL,
  `pis` INT NULL,
  `porta` VARCHAR(45) NULL,
  `ciudad` VARCHAR(45) NULL,
  `codiPostal` INT NULL,
  `pais` VARCHAR(45) NULL,
  `telefon` INT NULL,
  `fax` INT NULL,
  `NIF` VARCHAR(45) NULL,
  `nom` VARCHAR(45) NULL,
  PRIMARY KEY (`idProveedors`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelatgebbddFinal`.`Marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelatgebbddFinal`.`Marcas` (
  `idMarcas` INT NOT NULL AUTO_INCREMENT,
  `marca` VARCHAR(45) NULL,
  PRIMARY KEY (`idMarcas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelatgebbddFinal`.`Monturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelatgebbddFinal`.`Monturas` (
  `idMonturas` INT NOT NULL AUTO_INCREMENT,
  `tipu` VARCHAR(45) NULL,
  PRIMARY KEY (`idMonturas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelatgebbddFinal`.`Ulleres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelatgebbddFinal`.`Ulleres` (
  `idUlleres` INT NOT NULL AUTO_INCREMENT,
  `Marcas_idMarcas` INT NOT NULL,
  `graduacionI` DECIMAL(5) NULL,
  `graduacionD` DECIMAL(5) NULL,
  `colorMontura` VARCHAR(45) NULL,
  `colorVidrioI` VARCHAR(45) NULL,
  `colorVidrioD` VARCHAR(45) NULL,
  `preu` DECIMAL(10) NULL,
  `Monturas_idMonturas` INT NOT NULL,
  PRIMARY KEY (`idUlleres`),
  INDEX `fk_Ulleres_Marcas1_idx` (`Marcas_idMarcas` ASC),
  INDEX `fk_Ulleres_Monturas1_idx` (`Monturas_idMonturas` ASC),
  CONSTRAINT `fk_Ulleres_Marcas1`
    FOREIGN KEY (`Marcas_idMarcas`)
    REFERENCES `modelatgebbddFinal`.`Marcas` (`idMarcas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ulleres_Monturas1`
    FOREIGN KEY (`Monturas_idMonturas`)
    REFERENCES `modelatgebbddFinal`.`Monturas` (`idMonturas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelatgebbddFinal`.`Empleats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelatgebbddFinal`.`Empleats` (
  `idEmpleats` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idEmpleats`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelatgebbddFinal`.`Ventas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelatgebbddFinal`.`Ventas` (
  `idVentas` INT NOT NULL AUTO_INCREMENT,
  `Empleats_idEmpleats` INT NOT NULL,
  `Ulleres_idUlleres` INT NOT NULL,
  PRIMARY KEY (`idVentas`),
  INDEX `fk_Ventas_Empleats_idx` (`Empleats_idEmpleats` ASC),
  INDEX `fk_Ventas_Ulleres1_idx` (`Ulleres_idUlleres` ASC),
  CONSTRAINT `fk_Ventas_Empleats`
    FOREIGN KEY (`Empleats_idEmpleats`)
    REFERENCES `modelatgebbddFinal`.`Empleats` (`idEmpleats`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ventas_Ulleres1`
    FOREIGN KEY (`Ulleres_idUlleres`)
    REFERENCES `modelatgebbddFinal`.`Ulleres` (`idUlleres`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `modelatgebbddFinal`.`Compras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `modelatgebbddFinal`.`Compras` (
  `idCompras` INT NOT NULL AUTO_INCREMENT,
  `Proveedors_idProveedors` INT NOT NULL,
  `Marcas_idMarcas` INT NOT NULL,
  PRIMARY KEY (`idCompras`),
  INDEX `fk_Compras_Proveedors1_idx` (`Proveedors_idProveedors` ASC),
  INDEX `fk_Compras_Marcas1_idx` (`Marcas_idMarcas` ASC),
  CONSTRAINT `fk_Compras_Proveedors1`
    FOREIGN KEY (`Proveedors_idProveedors`)
    REFERENCES `modelatgebbddFinal`.`Proveedors` (`idProveedors`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Compras_Marcas1`
    FOREIGN KEY (`Marcas_idMarcas`)
    REFERENCES `modelatgebbddFinal`.`Marcas` (`idMarcas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
