-- Databricks notebook source
DESCRIBE HISTORY employees_cb1

-- COMMAND ----------

SELECT * 
FROM employees_cb1 VERSION AS OF 1

-- COMMAND ----------

SELECT * FROM employees_cb1@v1

-- COMMAND ----------

DELETE FROM employees_cb1

-- COMMAND ----------

SELECT * FROM employees_cb1

-- COMMAND ----------

RESTORE TABLE employees_cb1 TO VERSION AS OF 2 

-- COMMAND ----------

SELECT * FROM employees_cb1

-- COMMAND ----------

DESCRIBE HISTORY employees_cb1

-- COMMAND ----------

DESCRIBE DETAIL employees_cb1

-- COMMAND ----------

OPTIMIZE employees_cb1
ZORDER BY id

-- COMMAND ----------

DESCRIBE DETAIL employees_cb1

-- COMMAND ----------

DESCRIBE HISTORY employees_cb1

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees_cb1'

-- COMMAND ----------

VACUUM employees_cb1

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees_cb1'

-- COMMAND ----------

VACUUM employees_cb1 RETAIN 0 HOURS

-- COMMAND ----------

SET spark.databricks.delta.retentionDurationCheck.enabled = false;

-- COMMAND ----------

VACUUM employees_cb1 RETAIN 0 HOURS

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees_cb1'

-- COMMAND ----------

SELECT * FROM employees_cb1@v1

-- COMMAND ----------

DROP TABLE employees_cb

-- COMMAND ----------

SELECT * FROM employees_cb1

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees_cb1'

-- COMMAND ----------


