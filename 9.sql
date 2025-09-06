-- group the orders by date and calculate the average numbers id pizzas ordered by day.
SELECT 
    ROUND(AVG(qunatity),0) AS ordered
FROM
    (SELECT 
        orders.order_date, SUM(orders_details.quantity) AS qunatity
    FROM
        orders
    JOIN orders_details ON orders.order_id = orders_details.order_id
    GROUP BY orders.order_id) AS order_quantity;
 
