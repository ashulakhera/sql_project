-- Identify the highest-priced pizza.

SELECT 
    pizzas.price, pizza_types.name
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;

#################EXAMPLE_OUTPUT################
    
price	name
35.95	The Greek Pizza
