-- find the category-wise distribution of pizzas.

SELECT 
    category, COUNT(name) AS name
FROM
    pizza_types
GROUP BY category;

##################EXAMPLE_OUTPUT################
category name
Chicken	 6
Classic	 8
Supreme	 9
Veggie	 9
