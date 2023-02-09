# Lab 4 - NYC Taxi data

## Steps

```bash
# step 1) config AWS CLI
aws configure

# step 2) create S3 bucket (copy destination)

# step 3) copy data
 aws s3 cp s3://nyc-tlc s3://nyc-taxi-bucket --recursive
```

## Ref
- https://docs.aws.amazon.com/cli/latest/reference/s3/cp.html
- https://registry.opendata.aws/nyc-tlc-trip-records-pds/