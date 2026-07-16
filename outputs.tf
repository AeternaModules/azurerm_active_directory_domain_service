output "active_directory_domain_services_id" {
  description = "Map of id values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "active_directory_domain_services_deployment_id" {
  description = "Map of deployment_id values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.deployment_id if v.deployment_id != null && length(v.deployment_id) > 0 }
}
output "active_directory_domain_services_domain_configuration_type" {
  description = "Map of domain_configuration_type values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.domain_configuration_type if v.domain_configuration_type != null && length(v.domain_configuration_type) > 0 }
}
output "active_directory_domain_services_domain_name" {
  description = "Map of domain_name values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "active_directory_domain_services_filtered_sync_enabled" {
  description = "Map of filtered_sync_enabled values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.filtered_sync_enabled if v.filtered_sync_enabled != null }
}
output "active_directory_domain_services_initial_replica_set" {
  description = "Map of initial_replica_set values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.initial_replica_set if v.initial_replica_set != null && length(v.initial_replica_set) > 0 }
}
output "active_directory_domain_services_location" {
  description = "Map of location values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.location if v.location != null && length(v.location) > 0 }
}
output "active_directory_domain_services_name" {
  description = "Map of name values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "active_directory_domain_services_notifications" {
  description = "Map of notifications values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.notifications if v.notifications != null && length(v.notifications) > 0 }
}
output "active_directory_domain_services_resource_group_name" {
  description = "Map of resource_group_name values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "active_directory_domain_services_resource_id" {
  description = "Map of resource_id values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}
output "active_directory_domain_services_secure_ldap" {
  description = "Map of secure_ldap values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.secure_ldap if v.secure_ldap != null && length(v.secure_ldap) > 0 }
  sensitive   = true
}
output "active_directory_domain_services_security" {
  description = "Map of security values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.security if v.security != null && length(v.security) > 0 }
}
output "active_directory_domain_services_sku" {
  description = "Map of sku values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "active_directory_domain_services_sync_owner" {
  description = "Map of sync_owner values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.sync_owner if v.sync_owner != null && length(v.sync_owner) > 0 }
}
output "active_directory_domain_services_tags" {
  description = "Map of tags values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "active_directory_domain_services_tenant_id" {
  description = "Map of tenant_id values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}
output "active_directory_domain_services_version" {
  description = "Map of version values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.version if v.version != null }
}

