-- MySQL Script generated by MySQL Workbench
-- Sun Jun  4 21:57:27 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema porrasdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema porrasdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `porrasdb` DEFAULT CHARACTER SET utf8 ;
USE `porrasdb` ;

-- -----------------------------------------------------
-- Table `porrasdb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porrasdb`.`user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(100) NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NULL,
  `email` VARCHAR(100) NOT NULL,
  `password_hash` VARCHAR(255) NOT NULL,
  `image_url` VARCHAR(256) NULL,
  `activated` TINYINT NOT NULL,
  `created_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login_time` TIMESTAMP NULL,
  `lang_key` VARCHAR(10) NOT NULL,
  `activation_key` VARCHAR(20) NULL,
  `reset_key` VARCHAR(20) NULL,
  `reset_date` TIMESTAMP NULL,
  `created_by` VARCHAR(50) NOT NULL,
  `last_modified_by` VARCHAR(50) NULL,
  `last_modified_date` TIMESTAMP NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `unique_user_login` (`login` ASC),
  UNIQUE INDEX `unique_usere_mail` (`email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porrasdb`.`porra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porrasdb`.`porra` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `external_id` VARCHAR(255) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `creator_id` BIGINT NOT NULL,
  `type` VARCHAR(45) NOT NULL DEFAULT 'OPEN',
  `description` TEXT NULL,
  `image_url` VARCHAR(255) NULL,
  `valid` TINYINT NULL DEFAULT 0,
  `winner_bet` VARCHAR(255) NULL DEFAULT NULL,
  `winner_possible_bet` BIGINT NULL,
  `max_participants` INT NOT NULL,
  `finish_time` TIMESTAMP NOT NULL,
  `visits` BIGINT,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `unique_porra_external_id` (`external_id` ASC),
  INDEX `fk_porra_creator_id_idx` (`creator_id` ASC),
  CONSTRAINT `fk_porra_creator_id`
    FOREIGN KEY (`creator_id`)
    REFERENCES `porrasdb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porrasdb`.`user_porra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porrasdb`.`user_porra` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `id_user` BIGINT NOT NULL,
  `id_porra` BIGINT NOT NULL,
  `bet` VARCHAR(255) NULL DEFAULT NULL,
  `id_possible_bet` BIGINT NULL,
  `winned` TINYINT NULL DEFAULT 0,
  `paid` TINYINT NULL DEFAULT 0,
  `paid_time` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_user_porra_id_user` (`id_user` ASC),
  INDEX `idx_user_porra_id_porra` (`id_porra` ASC),
  UNIQUE INDEX `unique_user_porra_id_user_id_porra` (`id_user` ASC, `id_porra` ASC),
  CONSTRAINT `fk_user_porra_id_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `porrasdb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_porra_id_porra`
    FOREIGN KEY (`id_porra`)
    REFERENCES `porrasdb`.`porra` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porrasdb`.`user_friend`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porrasdb`.`user_friend` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `id_user` BIGINT NOT NULL,
  `id_friend` BIGINT NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL,
  `active` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_user_friend_id_user_id_friend` (`id_user` ASC, `id_friend` ASC),
  INDEX `idx_user_friend_id_user` (`id_user` ASC),
  INDEX `idx_user_friend_id_friend` (`id_friend` ASC),
  CONSTRAINT `fk_user_friend_id_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `porrasdb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_friend_id_friend`
    FOREIGN KEY (`id_friend`)
    REFERENCES `porrasdb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porrasdb`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porrasdb`.`role` (
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porrasdb`.`user_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porrasdb`.`user_role` (
  `id_user` BIGINT NOT NULL,
  `role_name` VARCHAR(50) NOT NULL,
  INDEX `fk_user_role_id_user_idx` (`id_user` ASC),
  PRIMARY KEY (`role_name`, `id_user`),
  CONSTRAINT `fk_user_role_role_name`
    FOREIGN KEY (`role_name`)
    REFERENCES `porrasdb`.`role` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_role_id_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `porrasdb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `porrasdb`.`possible_bet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `porrasdb`.`possible_bet` (
  `id` BIGINT NOT NULL,
  `id_porra` BIGINT NOT NULL,
  `bet` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_possible_bet_id_porra_idx` (`id_porra` ASC),
  CONSTRAINT `fk_possible_bet_id_porra`
    FOREIGN KEY (`id_porra`)
    REFERENCES `porrasdb`.`porra` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
