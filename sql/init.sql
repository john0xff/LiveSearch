create database if not exists live_search;

create table if not exists links(
	linkId int (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	linkAddress varchar(100),
	linkDescription varchar(100)
)



INSERT INTO `links` (`linkId`, `linkAddress`, `linkDescription`) VALUES
(1, 'http://www.google.com', 'most popular search engine'),
(2, 'http://www.yahoo.com', 'yahoo - nice service'),
(3, 'http://www.phoenixjcam.com', 'nice web page xD'),
(4, 'http://www.w3schools.com/', 'webpages'),
(5, 'http://www.tutorialspoint.com/', 'almost everything '),
(6, 'http://www.google.com', 'most popular search engine'),
(7, 'http://www.yahoo.com', 'yahoo - nice service'),
(8, 'http://www.phoenixjcam.com', 'nice web page xD'),
(9, 'http://www.w3schools.com/', 'webpages'),
(10, 'http://www.tutorialspoint.com/', 'almost everything '),
(11, 'http://www.google.com', 'most popular search engine'),
(12, 'http://www.yahoo.com', 'yahoo - nice service'),
(13, 'http://www.phoenixjcam.com', 'nice web page xD'),
(14, 'http://www.w3schools.com/', 'webpages'),
(15, 'http://www.tutorialspoint.com/', 'almost everything '),
(16, 'http://www.google.com', 'most popular search engine'),
(17, 'http://www.yahoo.com', 'yahoo - nice service'),
(18, 'http://www.phoenixjcam.com', 'nice web page xD'),
(19, 'http://www.w3schools.com/', 'webpages'),
(20, 'http://www.tutorialspoint.com/', 'almost everything '),
(21, 'http://www.google.com', 'most popular search engine'),
(22, 'http://www.yahoo.com', 'yahoo - nice service'),
(23, 'http://www.phoenixjcam.com', 'nice web page xD'),
(24, 'http://www.w3schools.com/', 'webpages'),
(25, 'http://www.tutorialspoint.com/', 'almost everything '),
(26, 'http://www.google.com', 'most popular search engine'),
(27, 'http://www.yahoo.com', 'yahoo - nice service'),
(28, 'http://www.phoenixjcam.com', 'nice web page xD'),
(29, 'http://www.w3schools.com/', 'webpages'),
(30, 'http://www.tutorialspoint.com/', 'almost everything '),
(31, 'http://www.google.com', 'most popular search engine'),
(32, 'http://www.yahoo.com', 'yahoo - nice service'),
(33, 'http://www.phoenixjcam.com', 'nice web page xD'),
(34, 'http://www.w3schools.com/', 'webpages'),
(35, 'http://www.tutorialspoint.com/', 'almost everything '),
(36, 'http://www.google.com', 'most popular search engine'),
(37, 'http://www.yahoo.com', 'yahoo - nice service'),
(38, 'http://www.phoenixjcam.com', 'nice web page xD'),
(39, 'http://www.w3schools.com/', 'webpages'),
(40, 'http://www.tutorialspoint.com/', 'almost everything '),
(41, 'http://www.tutorialspoint.com/mysql/mysql-regexps.htm', 'most test');




/* change column name :) */
alter table links change `linkName` `linkAddress` varchar(100)
ALTER TABLE `links` ADD `linkCategory` VARCHAR(100) NOT NULL ;

UPDATE `links` SET `links`.`linkCategory`='search_engines' WHERE `links`.`linkAddress`='http://www.google.com'








