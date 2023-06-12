/* uery to Find all suppliers who provide products in the ‘Seafood’ category */

SELECT distinct suppliers.supplier_id, suppliers.company_name, suppliers.contact_name
FROM suppliers
INNER JOIN products ON suppliers.supplier_id = products.supplier_id
INNER JOIN categories ON products.category_id = categories.category_id
WHERE categories.category_name = 'Seafood';