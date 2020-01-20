# Databricks notebook source


library(dplyr)
library(caret)
library(data.table)

# COMMAND ----------

# MAGIC %sql
# MAGIC 
# MAGIC select * from default.team_stats_1

# COMMAND ----------

library(SparkR)
basket_data <- sql("select * from default.team_stats_1")
display(basket_data)


# COMMAND ----------

counts <- count(groupBy(basket_data, basket_data$PLAYER))
display(counts)
