DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
  id INT NOT NULL AUTO_INCREMENT,
  item_id INT default 0,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price INT default 0,
  stock_quantity INT default 0,
  PRIMARY KEY (id)
);
INSERT INTO products (id, item_id, product_name, department_name, price, stock_quantity)
VALUES ( 1, "1", "Saucony Running Sneakers", "Shoe", '45', '10');

INSERT INTO products (id, item_id, product_name, department_name, price, stock_quantity)
VALUES ( 2, "2", "Laptop", "Computer", "350","5");

INSERT INTO products (id, item_id, product_name, department_name, price, stock_quantity)
VALUES ( 3, "3", "Piano", "Instrument", "900","1");

INSERT INTO products (id, item_id, product_name, department_name, price, stock_quantity)
VALUES ( 4, "4", "Drums", "Instrument", "1500","5");

INSERT INTO products (id, item_id, product_name, department_name, price, stock_quantity)
VALUES ( 5, "5", "Octopus T-Shirt", "Clothing", "20","100");

INSERT INTO products (id, item_id, product_name, department_name, price, stock_quantity)
VALUES ( 6, "6", "Octopus Sweater", "Clothing", "40","10");

INSERT INTO products (id, item_id, product_name, department_name, price, stock_quantity)
VALUES ( 7, "7", "Succulents", "Plants", "20","5");

INSERT INTO products (id, item_id, product_name, department_name, price, stock_quantity)
VALUES ( 8, "8", "Easter Eggs", "Holiday", "10","12");

INSERT INTO products (id, item_id, product_name, department_name, price, stock_quantity)
VALUES ( 9, "9", "Plant Stand", "Home/Living", "65","25");

INSERT INTO products (id, item_id, product_name, department_name, price, stock_quantity)
VALUES ( 10, "10", "Acrylic Paint", "Art", "45","12");