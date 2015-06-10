#!/bin/bash

echo ------------ Avro queries -------------------
impala-shell -i hostname -f query_narrow_avro.sql

echo ------------ Parquet queries -------------------
impala-shell -i hostname -f query_narrow_parquet.sql

echo ------------ Sequence queries -------------------
impala-shell -i hostname -f query_narrow_sequence.sql

echo ------------ Text queries -------------------
impala-shell -i hostname -f query_narrow_text.sql

echo ----------- DONE ----------------------------
