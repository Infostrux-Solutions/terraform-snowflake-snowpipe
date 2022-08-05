
variable "stage_name" {
  type        = string
  description = "Stage name in capital letter"
}
variable "stage_url" {
  type        = string
  description = "S3 full url ex: s3_id/path "
}

variable "database" {
  type        = string
  description = "Database for the pipe and the stage"
}

variable "schema" {
  type        = string
  description = "Schema for the pipe and the stage"
}

variable "table" {
  type        = string
  description = "Table for the pipe and the stage"
}

variable "file_format" {
  type        = string
  description = "Table for the pipe and the stage"
}

variable "bucket_id" {
  type        = string
  description = "Pipe's bucket where to fetch the data"
}

variable "pipe_name" {
  type        = string
  description = "Object for the pipe's stage configuration"
}

variable "pipe_copy_statement" {
  type        = string
  description = "Pipe sql query to copy the data from S3 to the ingest table"
  default     = ""
}

variable "storage_integration_name" {
  type        = string
  description = "Name of the storage integration that the external stage will use"
}
