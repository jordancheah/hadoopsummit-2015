#!/bin/bash

echo ------------ Avro queries -------------------
echo impala-shell -i hostname -f query_narrow_avro.sql

echo ------------ Parquet queries -------------------
impala-shell -i hostname -f query_wide_parquet.sql

echo ------------ Sequence queries -------------------
impala-shell -i hostname -f query_wide_sequence.sql

echo ------------ Text queries -------------------
impala-shell -i hostname -f query_wide_text.sql

echo ----------- DONE ----------------------------
