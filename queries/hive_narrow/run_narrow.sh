#!/bin/bash

echo ------------- Performing Queries on Narrow Text Table -------------------
hive -f narrow_queries.sql -d table=narrow_text -v

echo ------------- Performing Queries on Narrow Avro Table -------------------
hive -f narrow_queries.sql -d table=narrow_avro -v

echo ------------- Performing Queries on Narrow ORC Table -------------------
hive -f narrow_queries.sql -d table=narrow_orc -v

echo ------------- Performing Queries on Narrow Parquet Table -------------------
hive -f narrow_queries.sql -d table=narrow_parquet -v

echo ------------- Performing Queries on Narrow Sequence Table -------------------
hive -f narrow_queries.sql -d table=narrow_sequencefile -v

echo DONE
