This project was created to learn and demonstrate database and MS-SQL skills. Practice with sql commands and sql data types 

## Description

In this project, I created a DB to store information about products, orders, and customers, and wrote SQL queries to perform various tasks such as data analysis and report generation.
I used the following tables:

- Table "products" table to store information about products, such as their name, category and price.
- Table "customers" table to store information about customers, including their name, email
- Table  "orders" table to store order information such as order details, customer, total cost, etc.
- Table "order_details" table to store the details of each order, including items, quantity and price.

## Examples of data

### Products

| ProductID | ProductName     | CategoryID | Price  |
|-----------|-----------------|------------|--------|
| 1         | Laptop          | 1          | 800.00 |
| 2         | Smartphone      | 1          | 600.00 |
| 3         | Tablet          | 1          | 400.00 |
| 4         | Headphones      | 2          | 100.00 |
| 5         | Wireless Mouse  | 2          | 20.00  |

### Customers

| CustomerID | CustomerName     | Email             | Phone        |
|------------|------------------|-------------------|--------------|
| 1          | John Smith       | john@example.com  | 123-456-7890 |
| 2          | Jane Doe         | jane@example.com  | 987-654-3210 |
| 3          | Michael Johnson  | mike@example.com  | 555-123-4567 |
| 4          | Emily Brown      | emily@example.com | 777-888-9999 |
| 5          | David Wilson     | david@example.com | 111-222-3333 |

### Orders
_____________________________________________________
| OrderID | CustomerID | OrderDate  | TotalAmount  |
|---------|------------|------------|--------------|
| 1       | 101        | 2024-04-01 | 150.00       |
| 2       | 102        | 2024-04-02 | 220.00       |
| 3       | 103        | 2024-04-03 | 350.00       |
| 4       | 101        | 2024-04-04 | 180.00       |
| 5       | 104        | 2024-04-05 | 500.00       |
| 6       | 102        | 2024-04-06 | 300.00       |
| 7       | 105        | 2024-04-07 | 420.00       |
-----------------------------------------------------

### Order_details
________________________________________________________________
| OrderDetailID | OrderID | ProductID | Quantity | UnitPrice   |
|---------------|---------|-----------|----------|-------------|
| 1             | 1       | 101       | 2        | 50.00       |
| 2             | 1       | 102       | 1        | 100.00      |
| 3             | 2       | 103       | 3        | 80.00       |
| 4             | 3       | 104       | 1        | 200.00      |
| 5             | 3       | 105       | 2        | 150.00      |
| 6             | 3       | 106       | 1        | 100.00      |
| 7             | 4       | 107       | 2        | 75.00       |
----------------------------------------------------------------



