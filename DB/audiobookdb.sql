-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema audiobookdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `audiobookdb` ;

-- -----------------------------------------------------
-- Schema audiobookdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `audiobookdb` DEFAULT CHARACTER SET utf8 ;
USE `audiobookdb` ;

-- -----------------------------------------------------
-- Table `Audiobook`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Audiobook` ;

CREATE TABLE IF NOT EXISTS `Audiobook` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NULL,
  `author` VARCHAR(45) NOT NULL,
  `narrator` VARCHAR(45) NULL,
  `length` VARCHAR(45) NULL,
  `release_date` DATE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS bookuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'bookuser'@'localhost' IDENTIFIED BY 'bookuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'bookuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Audiobook`
-- -----------------------------------------------------
START TRANSACTION;
USE `audiobookdb`;
INSERT INTO `Audiobook` (`id`, `title`, `description`, `author`, `narrator`, `length`, `release_date`) VALUES (1, 'hp', NULL, 'jk', NULL, NULL, NULL);

COMMIT;

