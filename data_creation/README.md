# Data Creation	

In order to test, we need some data.
We are generating two different types of datasets:

1. Narrow : 10 columns and 10,000,000 rows.
2. Wide: 1000 columns and 4,000,000 rows.

## Requirements

- Python 2.7 or above to run the scrips.
- Faker lib: To install run `pip install fake-factory`

##Usage

If you would like to modify the number of rows you can add the option -r to specify the new number of rows.

`python datacreation_narrow.py -r 4000000| pv -s 4000000 -l | hadoop fs -put - data_narrow.txt`

`python datacreation_wide.py -r 10000000| pv -s 10000000 -l | hadoop fs -put - data_wide.txt`