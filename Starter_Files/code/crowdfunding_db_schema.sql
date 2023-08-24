-- drop tables if exist

drop table if exists contacts;
drop table if exists category;
drop table if exists dsubcategory;
drop table if exists campaign;

-- create contacts table

CREATE TABLE contacts (
    contact_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR (30) NOT NULL,
    last_name VARCHAR (30) NOT NULL,
    email VARCHAR (30) NOT NULL
);

-- create category table 

CREATE TABLE category (
    category_id VARCHAR (15) NOT NULL PRIMARY KEY,
    category VARCHAR (30) NOT NULL
);

-- create subcategory table

CREATE TABLE subcategory (
    subcategory_id VARCHAR (30) NOT NULL PRIMARY KEY,
    subcategory VARCHAR (30) NOT NULL
);

-- create campaign table

CREATE TABLE campaign (
    cf_id INT NOT NULL PRIMARY KEY,
    contact_id INT NOT NULL,
    company_name VARCHAR (30) NOT NULL,
    description VARCHAR (50) NOT NULL,
    goal DOUBLE NOT NULL,
    pledged DOUBLE NOT NULL,
    outcome VARCHAR (10) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR (10) NOT NULL,
    currency VARCHAR (10) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR (15) NOT NULL,
    subcategory_id varchar (30) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);