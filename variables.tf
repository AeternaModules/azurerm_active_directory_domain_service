variable "active_directory_domain_services" {
  description = <<EOT
Map of active_directory_domain_services, attributes below
Required:
    - domain_name
    - location
    - name
    - resource_group_name
    - sku
    - initial_replica_set (block):
        - subnet_id (required)
Optional:
    - domain_configuration_type
    - filtered_sync_enabled
    - tags
    - notifications (block):
        - additional_recipients (optional)
        - notify_dc_admins (optional)
        - notify_global_admins (optional)
    - secure_ldap (block):
        - enabled (required)
        - external_access_enabled (optional)
        - pfx_certificate (required)
        - pfx_certificate_password (required)
    - security (block):
        - kerberos_armoring_enabled (optional)
        - kerberos_rc4_encryption_enabled (optional)
        - ntlm_v1_enabled (optional)
        - sync_kerberos_passwords (optional)
        - sync_ntlm_passwords (optional)
        - sync_on_prem_passwords (optional)
        - tls_v1_enabled (optional)
EOT

  type = map(object({
    domain_name               = string
    location                  = string
    name                      = string
    resource_group_name       = string
    sku                       = string
    domain_configuration_type = optional(string)
    filtered_sync_enabled     = optional(bool)
    tags                      = optional(map(string))
    initial_replica_set = object({
      subnet_id = string
    })
    notifications = optional(object({
      additional_recipients = optional(set(string))
      notify_dc_admins      = optional(bool)
      notify_global_admins  = optional(bool)
    }))
    secure_ldap = optional(object({
      enabled                  = bool
      external_access_enabled  = optional(bool)
      pfx_certificate          = string
      pfx_certificate_password = string
    }))
    security = optional(object({
      kerberos_armoring_enabled       = optional(bool)
      kerberos_rc4_encryption_enabled = optional(bool)
      ntlm_v1_enabled                 = optional(bool)
      sync_kerberos_passwords         = optional(bool)
      sync_ntlm_passwords             = optional(bool)
      sync_on_prem_passwords          = optional(bool)
      tls_v1_enabled                  = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.active_directory_domain_services : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.active_directory_domain_services : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.active_directory_domain_services : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.active_directory_domain_services : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.active_directory_domain_services : (
        contains(["Standard", "Enterprise", "Premium"], v.sku)
      )
    ])
    error_message = "must be one of: Standard, Enterprise, Premium"
  }
  validation {
    condition = alltrue([
      for k, v in var.active_directory_domain_services : (
        v.notifications == null || (v.notifications.additional_recipients == null || (alltrue([for x in v.notifications.additional_recipients : length(trimspace(x)) > 0])))
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.active_directory_domain_services : (
        v.domain_configuration_type == null || (contains(["FullySynced", "ResourceTrusting"], v.domain_configuration_type))
      )
    ])
    error_message = "must be one of: FullySynced, ResourceTrusting"
  }
  validation {
    condition = alltrue([
      for k, v in var.active_directory_domain_services : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

