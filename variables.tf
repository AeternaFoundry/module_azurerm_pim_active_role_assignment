variable "pim_active_role_assignments" {
  description = <<EOT
Map of pim_active_role_assignments, attributes below
Required:
    - principal_id
    - role_definition_id
    - scope
Optional:
    - justification
    - schedule (block):
        - expiration (optional, block):
            - duration_days (optional)
            - duration_hours (optional)
            - end_date_time (optional)
        - start_date_time (optional)
    - ticket (block):
        - number (optional)
        - system (optional)
EOT

  type = map(object({
    principal_id       = string
    role_definition_id = string
    scope              = string
    justification      = optional(string)
    schedule = optional(object({
      expiration = optional(object({
        duration_days  = optional(number)
        duration_hours = optional(number)
        end_date_time  = optional(string)
      }))
      start_date_time = optional(string)
    }))
    ticket = optional(object({
      number = optional(string)
      system = optional(string)
    }))
  }))
}

