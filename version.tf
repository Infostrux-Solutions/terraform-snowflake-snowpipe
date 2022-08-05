terraform {
  required_version = ">= 0.13.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.25.0"
    }
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">=0.40.0"
    }
  }
}
