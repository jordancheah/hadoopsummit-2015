# Data Formats - Hadoop Summit 2015

## Prerequisites

- Hadoop environment needed to run, in particular CDH for Impala examples. Tested under CDH 5.1.2.
- JDK 7. Tested with JDK 1.7u55
- Python 2.7 or above to run the fakedata script.
- Pip or easyinstall to install the faker lib

## Instructions for Hive and Impala

Description
The dataformats folder provides a set of examples to load data into Hadoop, store it in five different storage formats (text, sequence, avro, orc, and parquet), and run aggregation queries against each of these formats with different types of filters.

In order to setup the example, the code must be executed in the following order:

1. Generate data to use for testing -> data_creation
2. Set up database environment and tables -> table_creation
3. Run queries -> queries

Additional details can be found in the README file in each of the subfolders.

