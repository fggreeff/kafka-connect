SELECT
	all_sales_uid AS uuid,
	row_create_date AS last_update,
	email AS customer_contact,
	product_code AS product,
	product_start_date AS start_date
FROM model.sales