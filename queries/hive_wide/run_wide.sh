#!/bin/bash

echo ------------- Performing Queries on Wide Text Table -------------------
hive -f wide_queries.sql -d table=wide_text -v

echo ------------- Performing Queries on Wide Avro Table -------------------
hive -f wide_queries.sql -d table=wide_text_avro -v

echo ------------- Performing Queries on Wide ORC Table -------------------
hive -f wide_queries.sql -d table=wide_orc -v

echo ------------- Performing Queries on Wide Parquet Table -------------------
hive -f wide_queries.sql -d table=wide_parquet_snappy -v

echo ------------- Performing Queries on Wide Sequence Table -------------------
hive -f wide_queries.sql -d table=wide_text_sequencefile -v

echo DONE
