output "pim_active_role_assignments_id" {
  description = "Map of id values across all pim_active_role_assignments, keyed the same as var.pim_active_role_assignments"
  value       = { for k, v in azurerm_pim_active_role_assignment.pim_active_role_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pim_active_role_assignments_justification" {
  description = "Map of justification values across all pim_active_role_assignments, keyed the same as var.pim_active_role_assignments"
  value       = { for k, v in azurerm_pim_active_role_assignment.pim_active_role_assignments : k => v.justification if v.justification != null && length(v.justification) > 0 }
}
output "pim_active_role_assignments_principal_id" {
  description = "Map of principal_id values across all pim_active_role_assignments, keyed the same as var.pim_active_role_assignments"
  value       = { for k, v in azurerm_pim_active_role_assignment.pim_active_role_assignments : k => v.principal_id if v.principal_id != null && length(v.principal_id) > 0 }
}
output "pim_active_role_assignments_principal_type" {
  description = "Map of principal_type values across all pim_active_role_assignments, keyed the same as var.pim_active_role_assignments"
  value       = { for k, v in azurerm_pim_active_role_assignment.pim_active_role_assignments : k => v.principal_type if v.principal_type != null && length(v.principal_type) > 0 }
}
output "pim_active_role_assignments_role_definition_id" {
  description = "Map of role_definition_id values across all pim_active_role_assignments, keyed the same as var.pim_active_role_assignments"
  value       = { for k, v in azurerm_pim_active_role_assignment.pim_active_role_assignments : k => v.role_definition_id if v.role_definition_id != null && length(v.role_definition_id) > 0 }
}
output "pim_active_role_assignments_schedule" {
  description = "Map of schedule values across all pim_active_role_assignments, keyed the same as var.pim_active_role_assignments"
  value       = { for k, v in azurerm_pim_active_role_assignment.pim_active_role_assignments : k => one(v.schedule) if v.schedule != null && length(v.schedule) > 0 }
}
output "pim_active_role_assignments_scope" {
  description = "Map of scope values across all pim_active_role_assignments, keyed the same as var.pim_active_role_assignments"
  value       = { for k, v in azurerm_pim_active_role_assignment.pim_active_role_assignments : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "pim_active_role_assignments_ticket" {
  description = "Map of ticket values across all pim_active_role_assignments, keyed the same as var.pim_active_role_assignments"
  value       = { for k, v in azurerm_pim_active_role_assignment.pim_active_role_assignments : k => one(v.ticket) if v.ticket != null && length(v.ticket) > 0 }
}

