
CREATE SCHEMA `database_website` ;

CREATE TABLE `database_website`.`account` (
  `account_id` INT NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `account_name` VARCHAR(20) NOT NULL,
  `status` INT NOT NULL,
  PRIMARY KEY (`account_id`));

CREATE TABLE `database_website`.`question_1` (
  `question_id` INT NOT NULL,
  `question_content` VARCHAR(1000) NULL,
  PRIMARY KEY (`question_id`));


CREATE TABLE `database_website`.`answer_1` (
  `answer_id` INT NOT NULL,
  `question_id` INT NOT NULL,
  `answer_content` VARCHAR(2000) NOT NULL,
  PRIMARY KEY (`answer_id`));

CREATE TABLE `database_website`.`question_2` (
  `question_id` INT NOT NULL,
  `question_content` VARCHAR(1000) NULL,
  PRIMARY KEY (`question_id`));


CREATE TABLE `database_website`.`answer_2` (
  `answer_id` INT NOT NULL,
  `question_id` INT NOT NULL,
  `answer_content` VARCHAR(2000) NOT NULL,
  PRIMARY KEY (`answer_id`));

CREATE TABLE `database_website`.`question_3` (
  `question_id` INT NOT NULL,
  `question_content` VARCHAR(1000) NULL,
  PRIMARY KEY (`question_id`));


CREATE TABLE `database_website`.`answer_3` (
  `answer_id` INT NOT NULL,
  `question_id` INT NOT NULL,
  `answer_content` VARCHAR(2000) NOT NULL,
  PRIMARY KEY (`answer_id`));
