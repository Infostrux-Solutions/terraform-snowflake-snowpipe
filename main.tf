resource "snowflake_pipe" "pipe" {
  name           = upper(var.pipe_name)
  database       = var.database
  schema         = var.schema
  comment        = "Managed by terraform"
  copy_statement = local.pipe_copy_statement
  auto_ingest    = true
}

locals {
  pipe_copy_statement = length(var.pipe_copy_statement) != 0 ? var.pipe_copy_statement : join("", [
    "copy into ",
    "${var.database}.${var.schema}.${var.table} ",
    "from @",
    "${var.database}.${var.schema}.${snowflake_stage.stage.name} "
  ])

}

resource "snowflake_stage" "stage" {
  name                = upper(var.stage_name)
  url                 = var.stage_url
  database            = var.database
  schema              = var.schema
  storage_integration = var.storage_integration_name
  file_format         = "FORMAT_NAME = ${var.file_format}"
}

resource "aws_s3_bucket_notification" "notification" {
  bucket = var.bucket_id
  queue {
    queue_arn = snowflake_pipe.pipe.notification_channel
    events = [
      "s3:ObjectCreated:*",
      "s3:ObjectRemoved:*",
      "s3:ObjectRestore:*"
    ]
  }
}
