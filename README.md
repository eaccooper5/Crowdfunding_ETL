# Project 2: Crowdfunding ETL mini
## Erin Cooper & Reed Erickson
 
 **Objective:**
 To practice building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After transforming the data, create four CSV files and use the CSV file data to create an ERD and a table schema. Finally, upload the CSV file data into a Postgres database.

##### Files

Project 2 ETL [files](Resources/)

## Requirements
### Create the Category and Subcategory DataFrames
##### Category
* The DataFrame contains a "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories 
* The DataFrame has a "category" column that contains only the category titles 
* The category DataFrame is exported as 'category.csv'
##### Subcategory
* The DataFrame contains a "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
* The DataFrame contains a "subcategory" column that contains only the subcategory titles
* The subcategory DataFrame is exported as subcategory.csv

### Create the Campaign DataFrame
* The DataFrame has the following columns:
    * A "cf_id" column
    * A "contact_id" column
    * A "company_name" column
    * A "description" column
    * A "goal" column that is a float data type
    * A "pledged" column that is a float data type
    * An "outcome" column
    * A "backers_count" column
    * A "country" column
    * A "currency" column
    * A "launch_date" with the time formatted as "YYYY-MM-DD"
    * An "end_date" with the time formatted as "YYYY-MM-DD"
    * A "category_id" column that contains the unique identification numbers matching those in the "category_id" column of the category DataFrame
    * A "subcategory_id" column that contains the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
* The campaign DataFrame is exported as campaign.csv 

### Create the Contacts DataFrame
* The DataFrame has the following columns:
    * A "contact_id" column
    * A "first_name" column
    * A "last_name" column
    * An "email" column
* The contacts DataFrame is exported as contacts.csv

### Create the Crowdfunding Database
* A database schema labeled, crowdfunding_db_schema.sql is created using [Quick DBD](https://app.quickdatabasediagrams.com/)
* A crowdfunding_db is created using the crowdfunding_db_schema.sql file 
* The database has the appropriate primary and foreign keys and relationships 
* Each CSV file is imported into the appropriate table without errors 
* The data from each table is displayed using a SELECT * statement 


________________________________
________________________________
________________________________ 
#####[ misc readme formatting from ](https://www.makeareadme.com/)
[link to Visual Studio Markdown Editing](https://code.visualstudio.com/Docs/languages/markdown#_markdown-preview)

[Wordpress about Markdown Quick References](https://wordpress.com/support/markdown-quick-reference/)
