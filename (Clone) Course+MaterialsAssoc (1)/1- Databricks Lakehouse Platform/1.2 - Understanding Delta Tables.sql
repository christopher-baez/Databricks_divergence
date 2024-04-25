-- Databricks notebook source
CREATE TABLE employees_cb1
  (id INT, name STRING, salary DOUBLE);

-- COMMAND ----------

INSERT INTO employees_cb1
VALUES 
  (1, "Adam", 3500.0),
  (2, "Sarah", 4020.5),
  (3, "John", 2999.3),
  (4, "Thomas", 4000.3),
  (5, "Anna", 2500.0),
  (6, "Kim", 6200.3)

-- COMMAND ----------

SELECT * FROM employees_cb1 order by name

-- COMMAND ----------

DESCRIBE DETAIL employees_cb1

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees_cb1'

-- COMMAND ----------

UPDATE employees_cb1 
SET salary = salary + 1000
WHERE name LIKE "A%"

-- COMMAND ----------

SELECT * FROM employees_cb1 order by name

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees_cb1'

-- COMMAND ----------

DESCRIBE DETAIL employees_cb1

-- COMMAND ----------

SELECT * FROM employees_cb1

-- COMMAND ----------

DESCRIBE HISTORY employees_cb1

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees_cb1/_delta_log'

-- COMMAND ----------

-- MAGIC %fs head 'dbfs:/user/hive/warehouse/employees_cb1/_delta_log/00000000000000000002.json'

-- COMMAND ----------


