# Snowflake Snowpipe Terraform Module

Terraform module that create all the Snowflake resources to received data from snowpipe.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

 Run `terraform destroy` when you don't need the user.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=4.25.0 |
| <a name="requirement_snowflake"></a> [snowflake](#requirement\_snowflake) | >=0.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.25.0 |
| <a name="provider_snowflake"></a> [snowflake](#provider\_snowflake) | 0.40.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket_notification.notification](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification) | resource |
| [snowflake_pipe.pipe](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/pipe) | resource |
| [snowflake_stage.stage](https://registry.terraform.io/providers/Snowflake-Labs/snowflake/latest/docs/resources/stage) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_id"></a> [bucket\_id](#input\_bucket\_id) | Pipe's bucket where to fetch the data | `string` | n/a | yes |
| <a name="input_database"></a> [database](#input\_database) | Database for the pipe and the stage | `string` | n/a | yes |
| <a name="input_file_format"></a> [file\_format](#input\_file\_format) | Table for the pipe and the stage | `string` | n/a | yes |
| <a name="input_pipe_copy_statement"></a> [pipe\_copy\_statement](#input\_pipe\_copy\_statement) | Pipe sql query to copy the data from S3 to the ingest table | `string` | `""` | no |
| <a name="input_pipe_name"></a> [pipe\_name](#input\_pipe\_name) | Object for the pipe's stage configuration | `string` | n/a | yes |
| <a name="input_schema"></a> [schema](#input\_schema) | Schema for the pipe and the stage | `string` | n/a | yes |
| <a name="input_stage_name"></a> [stage\_name](#input\_stage\_name) | Stage name in capital letter | `string` | n/a | yes |
| <a name="input_stage_url"></a> [stage\_url](#input\_stage\_url) | S3 full url ex: s3\_id/path | `string` | n/a | yes |
| <a name="input_storage_integration_name"></a> [storage\_integration\_name](#input\_storage\_integration\_name) | Name of the storage integration that the external stage will use | `string` | n/a | yes |
| <a name="input_table"></a> [table](#input\_table) | Table for the pipe and the stage | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_pipe_id"></a> [pipe\_id](#output\_pipe\_id) | ID of the pipe |
| <a name="output_stage_id"></a> [stage\_id](#output\_stage\_id) | ID of the stage |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## License

Apache 2 Licensed. See [LICENSE](https://github.com/Infostrux-Solutions/terraform-sf-source/compare/initial-commit?expand=1/tree/master/LICENSE) for full details.

## Authors

Module is maintained by [Infostrux Solutions](mailto:opensource@infostrux.com)
