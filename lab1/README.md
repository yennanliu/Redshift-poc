# Lab 1

## Steps

- Data model (Star Schema Benchmark(SSB))
<p align="center"><img src ="https://github.com/yennanliu/redshift-poc/blob/main/lab1/doc/data_model.png" ></p>

- 0) set up AWS access key
	- https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html

- 1) Create S3 bucket, download data, and upload data to s3
	- https://docs.aws.amazon.com/redshift/latest/dg/tutorial-loading-data-upload-files.html

- 3) Create tables
	- https://docs.aws.amazon.com/redshift/latest/dg/tutorial-loading-data-create-tables.html

- 4) Copy data from s3 to redshift
	- https://docs.aws.amazon.com/redshift/latest/dg/tutorial-loading-run-copy.html
	```bash
	# example cmd
	copy part from 's3://aaaa/bbb/LoadingDataSampleFiles/part-csv.tbl' 
	iam_role 'arn:aws:iam::xxxxx:role/xxxxx'
	csv;
	```
	- https://docs.aws.amazon.com/redshift/latest/dg/tutorial-loading-run-copy.html
	- `manifest file`
		- a file contains the needed s3 files to be loaded via COPY cmd
