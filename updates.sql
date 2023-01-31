-- Delete all calgary customers
DELETE from customer_table where origin = "calgary";

-- Update customer
UPDATE customer_table set last_name = "smith" where first_name = "bob";
