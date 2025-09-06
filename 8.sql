-- join revalent tables to find the category-wise distrubyution of pizzas.
select category,count(name) from pizza_types
group by category;