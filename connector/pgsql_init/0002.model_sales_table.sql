CREATE TABLE IF NOT EXISTS model.sales
(
    all_sales_uid VARCHAR(256),
    row_create_date TIMESTAMP WITHOUT TIME ZONE,
    email VARCHAR(256),
    product_code VARCHAR(10),
	product_start_date DATE
);