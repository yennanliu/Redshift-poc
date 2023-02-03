--------------------------------
-- 1
--------------------------------
copy part from 's3://bucket-yen-dev1/load/LoadingDataSampleFiles/part-csv.tbl' 
iam_role 'arn:aws:iam::xxxxxxxxxx:role/dev1'
csv;


--------------------------------
-- 2
--------------------------------
copy part from 's3://bucket-yen-dev1/load/LoadingDataSampleFiles/part-csv.tbl' 
iam_role 'arn:aws:iam::xxxxxxxxxx:role/dev1' 
csv
null as '\000';

--------------------------------
-- 3
--------------------------------

copy supplier from 's3://awssampledbuswest2/ssbgz/supplier.tbl' 
iam_role 'arn:aws:iam::xxxxxxxxxx:role/dev1' 
delimiter '|' 
gzip
region 'us-west-2';


--------------------------------
-- 3
--------------------------------

copy customer
from 's3://bucket-yen-dev1/load/LoadingDataSampleFiles/customer-fw.tbl'
iam_role 'arn:aws:iam::xxxxxxxxxx:role/dev1' 
fixedwidth 'c_custkey:10, c_name:25, c_address:25, c_city:10, c_nation:15, c_region :12, c_phone:15,c_mktsegment:10'
maxerror 10;


--------------------------------
-- 4
--------------------------------

copy dwdate from 's3://bucket-yen-dev1/load/LoadingDataSampleFiles/dwdate-tab.tbl'
iam_role 'arn:aws:iam::xxxxxxxxxx:role/dev1' 
delimiter '\t' 
dateformat 'auto';

--------------------------------
-- 5
--------------------------------

copy lineorder from 's3://awssampledb/load/lo/lineorder-single.tbl' 
iam_role 'arn:aws:iam::xxxxxxxxxx:role/dev1' 
gzip
compupdate off
region 'us-east-1';

--------------------------------
-- 6
--------------------------------

copy lineorder from 's3://awssampledb/load/lo/lineorder-multi.tbl' 
iam_role 'arn:aws:iam::xxxxxxxxxx:role/dev1' 
gzip
compupdate off
region 'us-east-1';

--------------------------------
-- Others
--------------------------------

vacuum;
analyze;

select * from lineorder limit 100;

select * from dwdate limit 100;


select c_custkey, c_name, c_address        
from customer
order by c_custkey
limit 10;


select * from STL_LOAD_ERRORS order by starttime desc;

truncate part;

select * from customer limit 10;

select count(1) from supplier limit 10;


select p_partkey, p_name, p_mfgr, p_category from part where p_mfgr is null;


select * from part limit 10;

select count(1) from part limit 10;