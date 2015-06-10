-- Copyright 2015 Silicon Valley Data Science.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

USE hadoopsummit2015;
  
-- ORC
drop table if exists ${table}_orc;
create table ${table}_orc stored as orc tblproperties ("orc.compress"="SNAPPY") as select * from ${table};
 
-- Parquet
set parquet.compression=SNAPPY;
drop table if exists ${table}_parquet;
create table ${table}_parquet stored as parquet as select * from ${table};

-- Sequence File 
set hive.exec.compress.output=true;
set mapreduce.output.fileoutputformat.compress.type=BLOCK;
set mapreduce.output.fileoutputformat.compress.codec=org.apache.hadoop.io.compress.SnappyCodec;
drop table if exists ${table}_sequencefile;
create table ${table}_sequencefile stored as sequencefile as select * from ${table};
 
-- Avro
set hive.exec.compress.output=true;
set avro.output.codec=deflate;
drop table if exists ${table}_avro;
create table ${table}_avro
	row format serde 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
	stored as inputformat 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
	outputformat 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
	tblproperties ('avro.schema.url'= ${avroschema});
insert into table ${table}_avro select * from ${table};
 
-- Text
set hive.exec.compress.output=true;
set mapreduce.output.fileoutputformat.compress.codec=org.apache.hadoop.io.compress.SnappyCodec;
drop table if exists ${table}_text;
create table ${table}_text stored as textfile as select * from ${table};

