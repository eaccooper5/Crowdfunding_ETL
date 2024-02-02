#SELECT * queries for every table.

SELECT * FROM campaign

SELECT * FROM contacts

SELECT * FROM category

SELECT * FROM subcategory

#Find information successful campaign runs including company name, campaign description, and goals.
#Sort in ascending order by company name.

SELECT company_name,
	description,
	goal,
	outcome
FROM campaign
WHERE outcome = 'successful'
ORDER BY company_name ASC;

#list categories from companies whose campaign outcomes were successful.

SELECT campaign.company_name,
	campaign.outcome,
	campaign.category_id,
	category.category
FROM campaign
JOIN category ON campaign.category_id = category.category_id 
WHERE outcome = 'successful';

#List the contact information of persons from campaigns whose outcomes were successful in ascending order.

SELECT campaign.contact_id,
	campaign.outcome,
	contacts.first_name,
	contacts.last_name,
	contacts.email
FROM campaign
JOIN contacts ON campaign.contact_id = contacts.contact_id
WHERE outcome = 'successful'
ORDER BY contacts.last_name ASC;

#List category and subcategory from companies with campaigns whose outcomes were successful.

SELECT campaign.company_name,
	campaign.outcome,
	campaign.category_id,
	campaign.subcategory_id,
	category.category,
	subcategory.subcategory
FROM campaign
JOIN category ON campaign.category_id = category.category_id
JOIN subcategory ON campaign.subcategory_id = subcategory.subcategory_id
WHERE campaign.outcome = 'successful';


