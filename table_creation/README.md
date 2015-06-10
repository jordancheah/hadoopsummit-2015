# Table Creation

This queries will take care of creating the database we will be using, as well as the initial tables that load the data, and finally re-writing the data in the different formats we will be testing:

1. Avro - deflate
2. Parquet - snappy
3. ORC - snappy
4. Sequence files - snappy
5. Text -snappy

## Instructions

To run the scripts we will be using Hive.

* Create the database: `hive -f create_database.sql`
* Copy the schemas included in the schemas folder.
* Run the `create_narrow_table.sql` script which will create the table and load the data that you had previously generated with the python scripts.

```
hive -f create_narrow_table.sql -d datapath="'data_narrow.txt'" -v
hive -f create_wide_table.sql -d datapath="'data_wide.txt'" -v
```

* Create the rest of the data formats with `create_formats.sql`.

```
 hive -f create_formats.sql -d table=narrow -d avroschema="'hdfs:///user/hive/warehouse/hadoopsummit2015.db/narrow.avsc'" -v
 
 hive -f create_formats.sql -d table=wide -d avroschema="'hdfs:///user/hive/warehouse/hadoopsummit2015.db/wide.avsc'" -v 
```

* Now you are set to run the queries.
