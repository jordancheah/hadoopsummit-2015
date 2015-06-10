## Avro Schemas

The avro schemas are used for the avro tables in Impala.

Copy to a directory after creating the database:

`hdfs dfs -put narrow.avsc hdfs:///user/hive/warehouse/hadoopsummit2015.db/`

`hdfs dfs -put wide.avsc hdfs:///user/hive/warehouse/hadoopsummit2015.db/`