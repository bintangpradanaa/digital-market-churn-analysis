SELECT
  Date AS order_date,
  CategoryName AS category_name,
  ProdName AS product_name,
  Price AS product_price,
  Quantity AS order_qty,
  Price*Quantity AS total_sales,
  CustomerEmail AS cust_email,
  CustomerState AS cust_state,
  CustomerCity AS cust_city
FROM customers AS c
JOIN orders AS o ON c.CustomerID = o.CustomerID
INNER JOIN products AS p ON p.ProdNumber = o.ProdNumber
INNER JOIN productcategory AS pc ON pc.CategoryID = p.Category
ORDER BY order_date, order_qty;



