# Crowdfunding_ETL

In this project, we have collaborated to practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions. This project will involve the following steps:
        
1. **Extract and Transform the Data**: Use Python tools and techniques to extract raw data and transform it into a usable format.
       
2. **Create CSV Files**: Generate four CSV files from the transformed data.
        
3. **Create an ERD and Table Schema**: Design an Entity-Relationship Diagram (ERD) and define a table schema based on the CSV file data.
        
4. **Upload Data to Postgres Database**: Import the CSV data into a PostgreSQL database.


## Create the Category and Subcategory DataFrames

Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

* A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories

* A "category" column that contains only the category titles

Export the category DataFrame as category.csv and save it to your GitHub repository.

Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

* A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
        
* A "subcategory" column that contains only the subcategory titles
        
Export the subcategory DataFrame as subcategory.csv and save it to the repository.


## Create the Campaign DataFrame
* Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

* The "cf_id" column
        
* The "contact_id" column
        
* The "company_name" column
        
* The "blurb" column, renamed to "description"
        
* The "goal" column, converted to the float data type
        
* The "pledged" column, converted to the float data type
        
* The "outcome" column
        
* The "backers_count" column
        
* The "country" column
        
* The "currency" column
        
* The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
        
* The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
        
* The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
        
* The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
        

Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.


## Create the Contacts DataFrame

Demonstrated two options for extracting and transforming the data from the contacts.xlsx Excel data:

Option 1: Use Python dictionary methods.

Option 2: Use regular expressions.

If you chose Option 1, complete the following steps:

Import the contacts.xlsx file into a DataFrame.
Iterate through the DataFrame, converting each row to a dictionary.
Iterate through each dictionary, doing the following:
Extract the dictionary values from the keys by using a Python list comprehension.
Add the values for each row to a new list.
Create a new DataFrame that contains the extracted data.
Split each "name" column value into a first and last name, and place each in a new column.
Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.
If you chose Option 2, complete the following steps:

Import the contacts.xlsx file into a DataFrame.
Extract the "contact_id", "name", and "email" columns by using regular expressions.
Create a new DataFrame with the extracted data.
Convert the "contact_id" column to the integer type.
Split each "name" column value into a first and a last name, and place each in a new column.
Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.


## Create the Crowdfunding Database 

Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site..

Use the information from the ERD to create a table schema for each CSV file.

Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.

Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.

Create a new Postgres database, named crowdfunding_db.

Using the database schema, create the tables in the correct order to handle the foreign keys.

Verify the table creation by running a SELECT statement for each table.

Import each CSV file into its corresponding SQL table.

Verify that each table has the correct data by running a SELECT statement for each.
