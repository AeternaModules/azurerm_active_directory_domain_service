output "active_directory_domain_services_id" {
  description = "Map of id values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.id }
}
output "active_directory_domain_services_deployment_id" {
  description = "Map of deployment_id values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.deployment_id }
}
output "active_directory_domain_services_domain_configuration_type" {
  description = "Map of domain_configuration_type values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.domain_configuration_type }
}
output "active_directory_domain_services_domain_name" {
  description = "Map of domain_name values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.domain_name }
}
output "active_directory_domain_services_filtered_sync_enabled" {
  description = "Map of filtered_sync_enabled values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.filtered_sync_enabled }
}
output "active_directory_domain_services_initial_replica_set" {
  description = "Map of initial_replica_set values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.initial_replica_set }
}
output "active_directory_domain_services_location" {
  description = "Map of location values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.location }
}
output "active_directory_domain_services_name" {
  description = "Map of name values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.name }
}
output "active_directory_domain_services_notifications" {
  description = "Map of notifications values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.notifications }
}
output "active_directory_domain_services_resource_group_name" {
  description = "Map of resource_group_name values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.resource_group_name }
}
output "active_directory_domain_services_resource_id" {
  description = "Map of resource_id values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.resource_id }
}
output "active_directory_domain_services_secure_ldap" {
  description = "Map of secure_ldap values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.secure_ldap }
  sensitive   = true
}
output "active_directory_domain_services_security" {
  description = "Map of security values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.security }
}
output "active_directory_domain_services_sku" {
  description = "Map of sku values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.sku }
}
output "active_directory_domain_services_sync_owner" {
  description = "Map of sync_owner values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.sync_owner }
}
output "active_directory_domain_services_tags" {
  description = "Map of tags values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.tags }
}
output "active_directory_domain_services_tenant_id" {
  description = "Map of tenant_id values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.tenant_id }
}
output "active_directory_domain_services_version" {
  description = "Map of version values across all active_directory_domain_services, keyed the same as var.active_directory_domain_services"
  value       = { for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : k => v.version }
}

