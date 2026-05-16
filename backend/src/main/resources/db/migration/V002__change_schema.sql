ALTER TABLE order_product
    ADD CONSTRAINT order_product_pk PRIMARY KEY (order_id, product_id);

ALTER TABLE order_product
    ADD CONSTRAINT order_product_order_fk
    FOREIGN KEY (order_id) REFERENCES orders (id)
    ON DELETE CASCADE;

ALTER TABLE order_product
    ADD CONSTRAINT order_product_product_fk
    FOREIGN KEY (product_id) REFERENCES product (id);
