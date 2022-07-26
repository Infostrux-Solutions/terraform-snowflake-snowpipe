terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.40.0"
    }
  }
}

provider "snowflake" {
  role = "sysadmin"
}

provider "aws" {
  region = "us-east-1"
}

data "aws_s3_bucket" "stage_bucket" {
  bucket = "stage-bucket"
}

module "snowpipe" {
  source = "../"
  database = "DEV_INGEST"
  schema = "PUBLIC"
  table = "CUSTOMERS"
  pipe_name = "DEV_ANALYTICS_PIPE"
  stage_name = "DEV_ANALYTICS_STAGE"
  stage_url = "s3://analysis/encrypted_files/"
  file_format = "CSV"
  bucket_id = data.aws_s3_bucket.selected.id
  storage_integration_name = "Example Integration"
}
