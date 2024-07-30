-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

select name, revenue from
(select category, name, revenue,
rank() over (partition by category order by revenue desc) as rn
from
(select pizza_types.category, pizza_types.name,
sum((order_details.quantity) * pizzas.price) as revenue
from pizza_types
join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
group by pizza_types.category, pizza_types.name) as a) as b
where rn <=3;

############################EXAMPLE OUTPUT ########################
# The Thai Chicken Pizza	43434.25
# The Barbecue Chicken Pizza	42768
# The California Chicken Pizza	41409.5
# The Classic Deluxe Pizza	38180.5
# The Hawaiian Pizza	32273.25
# The Pepperoni Pizza	30161.75
# The Spicy Italian Pizza	34831.25
# The Italian Supreme Pizza	33476.75
# The Sicilian Pizza	30940.5
# The Four Cheese Pizza	32265.70000000065
# The Mexicana Pizza	26780.75
# The Five Cheese Pizza	26066.5