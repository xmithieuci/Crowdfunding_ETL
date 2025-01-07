-- Create database
CREATE DATABASE crowdfunding_db;


-- contacts table
CREATE TABLE contacts (
    contact_id Int PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL
);

-- Show all data in the contacts table
SELECT * FROM contacts;

-- categories table
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(30) NOT NULL
);

-- Show all data in the category table
SELECT * FROM category;

-- subcategories table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(30) NOT NULL
);

-- Show all data in the subcategory table
SELECT * FROM subcategory;

-- campaigns table
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT REFERENCES contacts(contact_id),
    company_name VARCHAR(50),
    description TEXT,
    goal DECIMAL(10, 2),
    pledged DECIMAL(10, 2),
    outcome VARCHAR(20),
    backers_count INT,
    country VARCHAR(30),
    currency VARCHAR(10),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(10) REFERENCES category(category_id),
    subcategory_id VARCHAR(10) REFERENCES subcategory(subcategory_id)
);

-- Show all data in the campaign table
SELECT * FROM campaign;
