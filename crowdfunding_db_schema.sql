﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/1Zv5BC
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `Category` (
    `category_id` varchar  NOT NULL ,
    `category` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `category_id`
    )
);

CREATE TABLE `Contacts` (
    `contact_id` int  NOT NULL ,
    `first_name` varchar(50)  NOT NULL ,
    `last_name` varchar(50)  NOT NULL ,
    `email` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `contact_id`
    )
);

CREATE TABLE `Subcategory` (
    `subcategory_id` varchar  NOT NULL ,
    `subcategory` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `subcategory_id`
    )
);

CREATE TABLE `Campaign` (
    `cf_id` int  NOT NULL ,
    `contact_id` int  NOT NULL ,
    `company_name` varchar(50)  NOT NULL ,
    `description` varchar(50)  NOT NULL ,
    `goal` float  NOT NULL ,
    `pledged` float  NOT NULL ,
    `outcome` varchar(50)  NOT NULL ,
    `backers_count` int  NOT NULL ,
    `country` varchar(50)  NOT NULL ,
    `currency` varchar(50)  NOT NULL ,
    `launch_date` date  NOT NULL ,
    `end_date` date  NOT NULL ,
    `category_id` varchar(50)  NOT NULL ,
    `subcatergory_id` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `cf_id`
    )
);

ALTER TABLE `Campaign` ADD CONSTRAINT `fk_Campaign_contact_id` FOREIGN KEY(`contact_id`)
REFERENCES `Contacts` (`contact_id`);

ALTER TABLE `Campaign` ADD CONSTRAINT `fk_Campaign_category_id` FOREIGN KEY(`category_id`)
REFERENCES `Category` (`category_id`);

ALTER TABLE `Campaign` ADD CONSTRAINT `fk_Campaign_subcatergory_id` FOREIGN KEY(`subcatergory_id`)
REFERENCES `Subcategory` (`subcategory_id`);

