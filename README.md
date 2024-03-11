# projects.github.io

1) The "Product" and "Product Category" entities have a one-to-many relationship in the diagram. Each product category can have multiple products, but each product is assigned to only one product category.

2) To ensure that each product in the "Product" table has a valid category assigned to it, you can implement a foreign key constraint in the "Product" table that references the primary key of the "Product Category" table. This way, a product cannot exist without being associated with a valid product category.
