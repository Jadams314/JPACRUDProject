-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema default_schema
-- -----------------------------------------------------
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
  `title` VARCHAR(450) NOT NULL,
  `description` VARCHAR(1000) NULL DEFAULT NULL,
  `author` VARCHAR(45) NOT NULL,
  `narrator` VARCHAR(45) NULL DEFAULT NULL,
  `length` VARCHAR(45) NULL DEFAULT NULL,
  `release_date` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS bookuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'bookuser'@'localhost' IDENTIFIED BY 'bookuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'bookuser'@'localhost';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'bookuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
-- begin attached script 'script'
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
  `title` VARCHAR(450) NOT NULL,
  `description` VARCHAR(1000) NULL,
  `author` VARCHAR(450) NOT NULL,
  `narrator` VARCHAR(450) NULL,
  `length` VARCHAR(450) NULL,
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
INSERT INTO `Audiobook` (`id`, `title`, `description`, `author`, `narrator`, `length`, `release_date`) VALUES (1, 'Ready Player Two: A Novel', 'The highly anticipated sequel to the beloved worldwide best seller Ready Player One, the near-future adventure that inspired the blockbuster Steven Spielberg film....', 'Ernest Cline','Wil Wheaton', '826', '2020-11-24');
INSERT INTO `Audiobook` (`id`, `title`, `description`, `author`, `narrator`, `length`, `release_date`) VALUES (2, 'The Final Empire: Mistborn Book 1', 'From number one New York Times best-selling author Brandon Sanderson, the Mistborn series is a heist story of political intrigue and magical, martial-arts action. For a thousand years the ash fell and no flowers bloomed. For a thousand years the Skaa slaved in misery and lived in fear. For a thousand years the Lord Ruler, the \"Sliver of Infinity,\" reigned with absolute power and ultimate terror, divinely invincible. Then, when hope was so long lost that not even its memory remained, a terribly scarred, heart-broken half-Skaa rediscovered it in the depths of the Lord Ruler\'s most hellish prison.', 'Brandon Sanderson', 'Michael Kramer', '1479', '2008-12-28');
INSERT INTO `Audiobook` (`id`, `title`, `description`, `author`, `narrator`, `length`, `release_date`) VALUES (3, 'The Well of Ascension\nMistborn, Book 2', 'From number one New York Times best-selling author Brandon Sanderson, the Mistborn series is a heist story of political intrigue and magical martial-arts action. The impossible has been accomplished. The Lord Ruler - the man who claimed to be god incarnate and brutally ruled the world for a thousand years - has been vanquished. But Kelsier, the hero who masterminded that triumph, is dead too, and now the awesome task of building a new world has been left to his young protégé, Vin, the former street urchin who is now the most powerful Mistborn in the land, and to the idealistic young nobleman she loves. ', 'Brandon Sanderson', 'Michael Kramer', '1736', '2008-12-28');
INSERT INTO `Audiobook` (`id`, `title`, `description`, `author`, `narrator`, `length`, `release_date`) VALUES (4, 'The Hero of Ages\nMistborn, Book 3\n', 'From number one New York Times best-selling author Brandon Sanderson, the Mistborn series is a heist story of political intrigue and magical, martial-arts action. Who is the Hero of Ages? To end the Final Empire and restore freedom, Vin killed the Lord Ruler. But as a result, the Deepness - the lethal form of the ubiquitous mists - is back, along with increasingly heavy ashfalls and ever more powerful earthquakes. Humanity appears to be doomed. Having escaped death at the climax of The Well of Ascension only by becoming a Mistborn himself, Emperor Elend Venture hopes to find clues left behind by the Lord Ruler that will allow him to save the world. ', 'Brandon Sanderson', 'Michael Kramer', '1645', '2012-07-08');
INSERT INTO `Audiobook` (`id`, `title`, `description`, `author`, `narrator`, `length`, `release_date`) VALUES (5, 'With the Old Breed', 'The celebrated 2010 HBO miniseries The Pacific, winner of eight Emmy Awards, was based on two classic books about the War in the Pacific, Helmet for My Pillow and With The Old Breed. Audible Studios, in partnership with Playtone, the production company co-owned by Tom Hanks and Gary Goetzman, and creator of the award-winning HBO series Band of Brothers, John Adams, and The Pacific, as well as the HBO movie Game Change, has created new recordings of these memoirs, narrated by the stars of the miniseries. ','E.B.Sledge', 'Marc Vietor', '838', '2013-10-05');
INSERT INTO `Audiobook` (`id`, `title`, `description`, `author`, `narrator`, `length`, `release_date`) VALUES (6, 'Thank You for My Service', 'The unapologetic, laugh-your-ass-off military memoir both vets and civilians have been waiting for, from a five-tour Army Ranger turned YouTube phenomenon and zealous advocate for veterans Members of the military’s special operations branches share a closely guarded secret: They love their jobs. They relish the opportunity to fight. They are thankful for it, even, and hopeful that maybe, possibly, they’ll also get to kill a bunch of bad guys while they’re at it. You don’t necessarily need to thank them for their service - the pleasure is all theirs. In this hilarious and personal memoir, listeners ride shotgun alongside former Army Ranger and private military contractor and current social media phenomenon Mat Best, into the action and its aftermath.', 'Mat Best, Ross Patterson, Nils Parker', 'Mat Best', '432', '2019-08-20');
INSERT INTO `Audiobook` (`id`, `title`, `description`, `author`, `narrator`, `length`, `release_date`) VALUES (7, 'Ready Player One', 'At once wildly original and stuffed with irresistible nostalgia, Ready Player One is a spectacularly genre-busting, ambitious, and charming debut - part quest novel, part love story, and part virtual space opera set in a universe where spell-slinging mages battle giant Japanese robots, entire planets are inspired by Blade Runner, and flying DeLoreans achieve light speed. It’s the year 2044, and the real world is an ugly place. Like most of humanity, Wade Watts escapes his grim surroundings by spending his waking hours jacked into the OASIS, a sprawling virtual utopia that lets you be anything you want to be, a place where you can live and play and fall in love on any of 10,000 planets. ', 'Ernest Cline', 'Wil Wheaton', '940', '2011-08-06');
INSERT INTO `Audiobook` (`id`, `title`, `description`, `author`, `narrator`, `length`, `release_date`) VALUES (8, 'The Trackers Series Box Set', 'Five days ago, North Korea detonated three strategically placed nuclear warheads over the United States, triggering an electromagnetic pulse that crippled the country. A second attack destroyed the nerve center of America in a nuclear blast that flattened the nation\'s capital. As the government falls apart in the aftermath, the survivors must decide how far they will go to save the ones they love. In this lawless new world where the most ruthless thrive while innocents suffer, a sheriff, a retired marine, a nurse, and a senator turned secretary of defense are faced with keeping their communities and families safe. One thing is certain - they won\'t be able to save everyone. ', 'Nicholas Sansbury Smith', 'Bronson Pinchot', '2039', '2018-10-16');
INSERT INTO `Audiobook` (`id`, `title`, `description`, `author`, `narrator`, `length`, `release_date`) VALUES (9, 'The Fellowship of the Ring', 'Inspired by The Hobbit and begun in 1937, The Lord of the Rings is a trilogy that J.R.R. Tolkien created to provide \"the necessary background of history for Elvish tongues\". From these academic aspirations was born one of the most popular and imaginative works in English literature. The Fellowship of the Ring, the first volume in the trilogy, tells of the fateful power of the One Ring. It begins a magnificent tale of adventure that will plunge the members of the Fellowship of the Ring into a perilous quest and set the stage for the ultimate clash between the powers of good and evil. In this splendid, unabridged audio production of Tolkien\'s great work, all the inhabitants of a magical universe – hobbits, elves, and wizards – step colorfully into life. Rob Inglis\' narration has been praised as a masterpiece of audio.', 'J. R. R. Tolkien\n', 'Rob Inglis', '1147', '2012-10-09');

COMMIT;
-- end attached script 'script'
