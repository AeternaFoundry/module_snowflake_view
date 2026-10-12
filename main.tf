resource "snowflake_view" "views" {
  for_each = var.views

  database        = each.value.database
  name            = each.value.name
  schema          = each.value.schema
  statement       = each.value.statement
  change_tracking = each.value.change_tracking
  comment         = each.value.comment
  copy_grants     = each.value.copy_grants
  is_recursive    = each.value.is_recursive
  is_secure       = each.value.is_secure
  is_temporary    = each.value.is_temporary

  dynamic "aggregation_policy" {
    for_each = each.value.aggregation_policy != null ? [each.value.aggregation_policy] : []
    content {
      entity_key  = aggregation_policy.value.entity_key
      policy_name = aggregation_policy.value.policy_name
    }
  }

  dynamic "column" {
    for_each = each.value.column != null ? each.value.column : []
    content {
      column_name = column.value.column_name
      comment     = column.value.comment
      dynamic "masking_policy" {
        for_each = column.value.masking_policy != null ? [column.value.masking_policy] : []
        content {
          policy_name = masking_policy.value.policy_name
          using       = masking_policy.value.using
        }
      }
      dynamic "projection_policy" {
        for_each = column.value.projection_policy != null ? [column.value.projection_policy] : []
        content {
          policy_name = projection_policy.value.policy_name
        }
      }
    }
  }

  dynamic "data_metric_function" {
    for_each = each.value.data_metric_function != null ? each.value.data_metric_function : []
    content {
      function_name   = data_metric_function.value.function_name
      on              = data_metric_function.value.on
      schedule_status = data_metric_function.value.schedule_status
    }
  }

  dynamic "data_metric_schedule" {
    for_each = each.value.data_metric_schedule != null ? [each.value.data_metric_schedule] : []
    content {
      minutes    = data_metric_schedule.value.minutes
      using_cron = data_metric_schedule.value.using_cron
    }
  }

  dynamic "row_access_policy" {
    for_each = each.value.row_access_policy != null ? [each.value.row_access_policy] : []
    content {
      on          = row_access_policy.value.on
      policy_name = row_access_policy.value.policy_name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

