variable "views" {
  description = <<EOT
Map of views, attributes below
Required:
    - database
    - name
    - schema
    - statement
Optional:
    - change_tracking
    - comment
    - copy_grants
    - is_recursive
    - is_secure
    - is_temporary
    - aggregation_policy (block):
        - entity_key (optional)
        - policy_name (required)
    - column (block):
        - column_name (required)
        - comment (optional)
        - masking_policy (optional, block):
            - policy_name (required)
            - using (optional)
        - projection_policy (optional, block):
            - policy_name (required)
    - data_metric_function (block):
        - function_name (required)
        - on (required)
        - schedule_status (required)
    - data_metric_schedule (block):
        - minutes (optional)
        - using_cron (optional)
    - row_access_policy (block):
        - on (required)
        - policy_name (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database        = string
    name            = string
    schema          = string
    statement       = string
    change_tracking = optional(string)
    comment         = optional(string)
    copy_grants     = optional(bool)
    is_recursive    = optional(string)
    is_secure       = optional(string)
    is_temporary    = optional(string)
    aggregation_policy = optional(object({
      entity_key  = optional(set(string))
      policy_name = string
    }))
    column = optional(list(object({
      column_name = string
      comment     = optional(string)
      masking_policy = optional(object({
        policy_name = string
        using       = optional(list(string))
      }))
      projection_policy = optional(object({
        policy_name = string
      }))
    })))
    data_metric_function = optional(list(object({
      function_name   = string
      on              = set(string)
      schedule_status = string
    })))
    data_metric_schedule = optional(object({
      minutes    = optional(number)
      using_cron = optional(string)
    }))
    row_access_policy = optional(object({
      on          = set(string)
      policy_name = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

