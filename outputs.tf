output "active_directory_domain_services" {
  description = "All active_directory_domain_service resources"
  value       = azurerm_active_directory_domain_service.active_directory_domain_services
  sensitive   = true
}
output "active_directory_domain_services_deployment_id" {
  description = "List of deployment_id values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.deployment_id]
}
output "active_directory_domain_services_domain_configuration_type" {
  description = "List of domain_configuration_type values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.domain_configuration_type]
}
output "active_directory_domain_services_domain_name" {
  description = "List of domain_name values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.domain_name]
}
output "active_directory_domain_services_filtered_sync_enabled" {
  description = "List of filtered_sync_enabled values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.filtered_sync_enabled]
}
output "active_directory_domain_services_initial_replica_set" {
  description = "List of initial_replica_set values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.initial_replica_set]
}
output "active_directory_domain_services_location" {
  description = "List of location values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.location]
}
output "active_directory_domain_services_name" {
  description = "List of name values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.name]
}
output "active_directory_domain_services_notifications" {
  description = "List of notifications values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.notifications]
}
output "active_directory_domain_services_resource_group_name" {
  description = "List of resource_group_name values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.resource_group_name]
}
output "active_directory_domain_services_resource_id" {
  description = "List of resource_id values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.resource_id]
}
output "active_directory_domain_services_secure_ldap" {
  description = "List of secure_ldap values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.secure_ldap]
  sensitive   = true
}
output "active_directory_domain_services_security" {
  description = "List of security values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.security]
}
output "active_directory_domain_services_sku" {
  description = "List of sku values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.sku]
}
output "active_directory_domain_services_sync_owner" {
  description = "List of sync_owner values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.sync_owner]
}
output "active_directory_domain_services_tags" {
  description = "List of tags values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.tags]
}
output "active_directory_domain_services_tenant_id" {
  description = "List of tenant_id values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.tenant_id]
}
output "active_directory_domain_services_version" {
  description = "List of version values across all active_directory_domain_services"
  value       = [for k, v in azurerm_active_directory_domain_service.active_directory_domain_services : v.version]
}

