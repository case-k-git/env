#!/bin/bash

dataset=$1
table=$2
bq extract --destination_format=CSV --print_header=false ${dataset}.${table} "gs://${dataset}/${table}/${table}_*.csv"
gsutil compose "gs://${dataset}/${table}/${table}_*.csv" "gs://${dataset}/merge/${table}.csv"
gsutil cp "gs://${dataset}/merge/${table}.csv" ./
bq query -q -n 10000000 --use_legacy_sql=false --format=csv \
"""
SELECT
  column_name,
  data_type
FROM
  ${dataset}.INFORMATION_SCHEMA.COLUMNS
WHERE
  table_name='${table}'
""" > ${table}_columns.csv
