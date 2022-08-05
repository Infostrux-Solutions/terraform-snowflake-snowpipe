output "stage_id" {
  value       = snowflake_stage.stage.id
  description = "ID of the stage"
}

output "pipe_id" {
  value       = snowflake_pipe.pipe.id
  description = "ID of the pipe"
}
