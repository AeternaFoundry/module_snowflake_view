output "views_id" {
  description = "Map of id values across all views, keyed the same as var.views except keys with no id are omitted"
  value       = { for k, v in snowflake_view.views : k => v.id if v.id != null && length(v.id) > 0 }
}
output "views_aggregation_policy" {
  description = "Map of aggregation_policy values across all views, keyed the same as var.views except keys with no aggregation_policy are omitted"
  value       = { for k, v in snowflake_view.views : k => one(v.aggregation_policy) if v.aggregation_policy != null && length(v.aggregation_policy) > 0 }
}
output "views_change_tracking" {
  description = "Map of change_tracking values across all views, keyed the same as var.views except keys with no change_tracking are omitted"
  value       = { for k, v in snowflake_view.views : k => v.change_tracking if v.change_tracking != null && length(v.change_tracking) > 0 }
}
output "views_column" {
  description = "Map of column values across all views, keyed the same as var.views except keys with no column are omitted"
  value       = { for k, v in snowflake_view.views : k => v.column if v.column != null && length(v.column) > 0 }
}
output "views_comment" {
  description = "Map of comment values across all views, keyed the same as var.views except keys with no comment are omitted"
  value       = { for k, v in snowflake_view.views : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "views_copy_grants" {
  description = "Map of copy_grants values across all views, keyed the same as var.views except keys with no copy_grants are omitted"
  value       = { for k, v in snowflake_view.views : k => v.copy_grants if v.copy_grants != null }
}
output "views_data_metric_function" {
  description = "Map of data_metric_function values across all views, keyed the same as var.views except keys with no data_metric_function are omitted"
  value       = { for k, v in snowflake_view.views : k => v.data_metric_function if v.data_metric_function != null && length(v.data_metric_function) > 0 }
}
output "views_data_metric_schedule" {
  description = "Map of data_metric_schedule values across all views, keyed the same as var.views except keys with no data_metric_schedule are omitted"
  value       = { for k, v in snowflake_view.views : k => one(v.data_metric_schedule) if v.data_metric_schedule != null && length(v.data_metric_schedule) > 0 }
}
output "views_database" {
  description = "Map of database values across all views, keyed the same as var.views except keys with no database are omitted"
  value       = { for k, v in snowflake_view.views : k => v.database if v.database != null && length(v.database) > 0 }
}
output "views_describe_output" {
  description = "Map of describe_output values across all views, keyed the same as var.views except keys with no describe_output are omitted"
  value       = { for k, v in snowflake_view.views : k => v.describe_output if v.describe_output != null && length(v.describe_output) > 0 }
}
output "views_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all views, keyed the same as var.views except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_view.views : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "views_is_recursive" {
  description = "Map of is_recursive values across all views, keyed the same as var.views except keys with no is_recursive are omitted"
  value       = { for k, v in snowflake_view.views : k => v.is_recursive if v.is_recursive != null && length(v.is_recursive) > 0 }
}
output "views_is_secure" {
  description = "Map of is_secure values across all views, keyed the same as var.views except keys with no is_secure are omitted"
  value       = { for k, v in snowflake_view.views : k => v.is_secure if v.is_secure != null && length(v.is_secure) > 0 }
}
output "views_is_temporary" {
  description = "Map of is_temporary values across all views, keyed the same as var.views except keys with no is_temporary are omitted"
  value       = { for k, v in snowflake_view.views : k => v.is_temporary if v.is_temporary != null && length(v.is_temporary) > 0 }
}
output "views_name" {
  description = "Map of name values across all views, keyed the same as var.views except keys with no name are omitted"
  value       = { for k, v in snowflake_view.views : k => v.name if v.name != null && length(v.name) > 0 }
}
output "views_row_access_policy" {
  description = "Map of row_access_policy values across all views, keyed the same as var.views except keys with no row_access_policy are omitted"
  value       = { for k, v in snowflake_view.views : k => one(v.row_access_policy) if v.row_access_policy != null && length(v.row_access_policy) > 0 }
}
output "views_schema" {
  description = "Map of schema values across all views, keyed the same as var.views except keys with no schema are omitted"
  value       = { for k, v in snowflake_view.views : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "views_show_output" {
  description = "Map of show_output values across all views, keyed the same as var.views except keys with no show_output are omitted"
  value       = { for k, v in snowflake_view.views : k => v.show_output if v.show_output != null && length(v.show_output) > 0 }
}
output "views_statement" {
  description = "Map of statement values across all views, keyed the same as var.views except keys with no statement are omitted"
  value       = { for k, v in snowflake_view.views : k => v.statement if v.statement != null && length(v.statement) > 0 }
}

