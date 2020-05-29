/*
Changing to lowercase and uppercase
Most of the time, you can't make changes directly to the data from the database to make it look more user-friendly. However, when you query the data, you can control the aspect of the results, and you can make them easier to read.

Working with functions that manipulate string values is easy and gives great results. In this exercise, you will see how easy it is to work with the functions that transform the characters from a string to lowercase or uppercase. The purpose is to create a message mentioning the types of cocoa beans used by each company and their country of origin: The company BONNAT uses beans of type "Criollo", originating from VENEZUELA .*/


/*
Select information from the ratings table, excluding the unknown broad_bean_origins.
Convert the broad_bean_origins to lowercase when comparing it to the '%unknown%' expression.
*/
SELECT 
	company,
	bean_type,
	broad_bean_origin,
	'The company ' +  company + ' uses beans of type "' + bean_type + '", originating from ' + broad_bean_origin + '.'
FROM ratings
WHERE
    -- The 'broad_bean_origin' should not be unknown
	broad_bean_origin NOT LIKE '%unknown%';


/*
Restrict the query to make sure that the bean_type is not unknown.
Convert the bean_type to lowercase and compare it with an expression that contains the '%unknown%' word.
*/
SELECT 
	company,
	bean_type,
	broad_bean_origin,
	'The company ' +  company + ' uses beans of type "' + bean_type + '", originating from ' + broad_bean_origin + '.'
FROM ratings
WHERE 
    -- The 'broad_bean_origin' should not be unknown
	LOWER(broad_bean_origin) NOT LIKE '%unknown%'
    -- The 'bean_type' should not be unknown
    AND bean_type NOT LIKE '%unknown%';

/*
Format the message so that company and broad_bean_origin are uppercase.
*/
SELECT 
	company,
	bean_type,
	broad_bean_origin,
    -- 'company' and 'broad_bean_origin' should be in uppercase
	'The company ' +  UPPER(company) + ' uses beans of type "' + bean_type + '", originating from ' + UPPER(broad_bean_origin) + '.'
FROM ratings
WHERE 
    -- The 'broad_bean_origin' should not be unknown
	LOWER(broad_bean_origin) NOT LIKE '%unknown%'
     -- The 'bean_type' should not be unknown
    AND LOWER(bean_type) NOT LIKE '%unknown%';

    