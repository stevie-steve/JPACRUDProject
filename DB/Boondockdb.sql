-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Boondockdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Boondockdb` ;

-- -----------------------------------------------------
-- Schema Boondockdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Boondockdb` DEFAULT CHARACTER SET utf8 ;
USE `Boondockdb` ;

-- -----------------------------------------------------
-- Table `boondock`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `boondock` ;

CREATE TABLE IF NOT EXISTS `boondock` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL DEFAULT 'Unknown Boondock Name',
  `free` TINYINT NULL,
  `location` VARCHAR(1000) NOT NULL DEFAULT 'Unknown Location',
  `gps_latitude` VARCHAR(45) NULL,
  `gps_longitude` VARCHAR(45) NULL,
  `elevation` INT NULL,
  `management` VARCHAR(100) NULL,
  `activities` VARCHAR(1000) NULL,
  `photo` VARCHAR(1000) NULL,
  `average_rating_out_of_five` DECIMAL(3,2) NULL,
  `number_of_reviews` INT NULL,
  `map_image` VARCHAR(1000) NULL,
  `current_weather` VARCHAR(1000) NULL,
  `length_of_allowed_stay_in_days` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS boondockuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'boondockuser'@'localhost' IDENTIFIED BY 'boondockuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'boondockuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `boondock`
-- -----------------------------------------------------
START TRANSACTION;
USE `Boondockdb`;
INSERT INTO `boondock` (`id`, `name`, `free`, `location`, `gps_latitude`, `gps_longitude`, `elevation`, `management`, `activities`, `photo`, `average_rating_out_of_five`, `number_of_reviews`, `map_image`, `current_weather`, `length_of_allowed_stay_in_days`) VALUES (1, 'New Growth', 1, 'Woodland Park, Colorado', '39.096284 ', '-105.135251', 8507, 'Public - Forest Service', 'RV, Parking, TentCamping, Hiking, Wildlife, Viewing', 'https://freecampsites.net/wp-content/uploads/2018/06/20180608_200441-800x450.jpg', 3.92, 12, 'No Image Available', 'https://freecampsites.net/wp-content/themes/freecampsites/images/weather/10d.png', 14);
INSERT INTO `boondock` (`id`, `name`, `free`, `location`, `gps_latitude`, `gps_longitude`, `elevation`, `management`, `activities`, `photo`, `average_rating_out_of_five`, `number_of_reviews`, `map_image`, `current_weather`, `length_of_allowed_stay_in_days`) VALUES (2, 'Rainbow Falls', 1, 'Sedalia, Colorado', '39.15634', '-105.11411', 7497, 'Public - Forest Service (USDA) ', 'OHV, Fishing, Hiking, Horse, Trails, Hunting, Wildlife Viewing', 'https://freecampsites.net/wp-content/uploads/2017/07/IMG_2443-800x600.jpg', 3.43, 69, NULL, 'https://freecampsites.net/wp-content/themes/freecampsites/images/weather/10d.png', 14);
INSERT INTO `boondock` (`id`, `name`, `free`, `location`, `gps_latitude`, `gps_longitude`, `elevation`, `management`, `activities`, `photo`, `average_rating_out_of_five`, `number_of_reviews`, `map_image`, `current_weather`, `length_of_allowed_stay_in_days`) VALUES (3, 'Rampart Road Forest Land', 1, 'Woodland Park, Colorado', '39.06272', '-105.02426', 9255, 'Public - Forest Service (Unofficial)', 'Camping', 'https://freecampsites.net/wp-content/uploads/2016/10/IMG_20160911_093624140_HDR-800x450.jpg', 3.68, 41, NULL, 'https://freecampsites.net/wp-content/themes/freecampsites/images/weather/10d.png', 14);
INSERT INTO `boondock` (`id`, `name`, `free`, `location`, `gps_latitude`, `gps_longitude`, `elevation`, `management`, `activities`, `photo`, `average_rating_out_of_five`, `number_of_reviews`, `map_image`, `current_weather`, `length_of_allowed_stay_in_days`) VALUES (4, 'Monument Walmart', 1, 'Monument, Colorado', '39.06545', '-104.85246', 6906, 'Private - Retail Store (Unofficial)', 'Overnight Stay', NULL, 3.00, 1, NULL, 'https://freecampsites.net/wp-content/themes/freecampsites/images/weather/10d.png', 1);
INSERT INTO `boondock` (`id`, `name`, `free`, `location`, `gps_latitude`, `gps_longitude`, `elevation`, `management`, `activities`, `photo`, `average_rating_out_of_five`, `number_of_reviews`, `map_image`, `current_weather`, `length_of_allowed_stay_in_days`) VALUES (5, 'Bass Pro Shop', 1, 'Colorado Springs, Colorado', '39.02371', '-104.826538', 6841, 'Private - Retail Store (Official)', 'Overnight Stay', 'https://freecampsites.net/wp-content/uploads/2019/06/7E2ACE8A-CF17-4737-9DF6-C8740D7CEAEF-450x600.jpeg', 4.64, 14, NULL, 'https://freecampsites.net/wp-content/themes/freecampsites/images/weather/10d.png', 1);
INSERT INTO `boondock` (`id`, `name`, `free`, `location`, `gps_latitude`, `gps_longitude`, `elevation`, `management`, `activities`, `photo`, `average_rating_out_of_five`, `number_of_reviews`, `map_image`, `current_weather`, `length_of_allowed_stay_in_days`) VALUES (6, 'Middle Rampart Road', 1, 'Colorado Springs, Colorado', '38.96252', '-104.99779', 9423, 'Public - Forest Service (Official)', 'RV Parking\nTent Camping\nBiking\nBoating\nFishing\nHiking\nRock Climbing\nWildlife Viewing', 'https://freecampsites.net/wp-content/uploads/2019/04/IMG_20190426_073013-800x600.jpg', 4.00, 31, NULL, 'https://freecampsites.net/wp-content/themes/freecampsites/images/weather/10d.png', 21);
INSERT INTO `boondock` (`id`, `name`, `free`, `location`, `gps_latitude`, `gps_longitude`, `elevation`, `management`, `activities`, `photo`, `average_rating_out_of_five`, `number_of_reviews`, `map_image`, `current_weather`, `length_of_allowed_stay_in_days`) VALUES (7, 'Manitou Municipal Parking', 0, 'Manitou Springs, Colorado', '38.85769', '-104.914868', 6319, 'Public - Town center (Official)', 'Overnight Stay', NULL, 5.00, 2, NULL, 'https://freecampsites.net/wp-content/themes/freecampsites/images/weather/10d.png', 1);
INSERT INTO `boondock` (`id`, `name`, `free`, `location`, `gps_latitude`, `gps_longitude`, `elevation`, `management`, `activities`, `photo`, `average_rating_out_of_five`, `number_of_reviews`, `map_image`, `current_weather`, `length_of_allowed_stay_in_days`) VALUES (8, 'Manchester Creek Road', 1, 'Divide, Colorado', '39.0027', '-105.1641', 9101, 'Public - Forest Service (Official)', 'OHV', 'https://freecampsites.net/wp-content/uploads/2019/07/DSC07042-800x533.jpg', 3.76, 3, NULL, 'https://freecampsites.net/wp-content/themes/freecampsites/images/weather/10d.png', 14);
INSERT INTO `boondock` (`id`, `name`, `free`, `location`, `gps_latitude`, `gps_longitude`, `elevation`, `management`, `activities`, `photo`, `average_rating_out_of_five`, `number_of_reviews`, `map_image`, `current_weather`, `length_of_allowed_stay_in_days`) VALUES (9, 'Seven Lakes Road', 1, 'Manitou Springs, Colorado', '38.75428', '-105.01006', 10354, 'Public - Forest Service (Official)', 'RV Parking\nTent Camping\nOHV\nBiking\nHiking\nHunting\nWildlife Viewing\nWinter Sports', NULL, 3.40, 5, NULL, 'https://freecampsites.net/wp-content/themes/freecampsites/images/weather/10d.png', 5);
INSERT INTO `boondock` (`id`, `name`, `free`, `location`, `gps_latitude`, `gps_longitude`, `elevation`, `management`, `activities`, `photo`, `average_rating_out_of_five`, `number_of_reviews`, `map_image`, `current_weather`, `length_of_allowed_stay_in_days`) VALUES (10, 'Up On Cripple Creek', 1, 'Florissant, Colorado', '38.697028', '-105.202064', 8330, 'Public - Forest Service (Unofficial)', 'Camping, Fire Pit', 'https://freecampsites.net/wp-content/uploads/2017/05/IMG_7029-800x533.jpg', 5.00, 1, NULL, 'https://freecampsites.net/wp-content/themes/freecampsites/images/weather/10d.png', 3);

COMMIT;

