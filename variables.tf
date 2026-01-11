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
    filtered_sync_enabled     = optional(bool, false)
    tags                      = optional(map(string))
    initial_replica_set = object({
      subnet_id = string
    })
    notifications = optional(object({
      additional_recipients = optional(set(string))
      notify_dc_admins      = optional(bool, false)
      notify_global_admins  = optional(bool, false)
    }))
    secure_ldap = optional(object({
      enabled                  = bool
      external_access_enabled  = optional(bool, false)
      pfx_certificate          = string
      pfx_certificate_password = string
    }))
    security = optional(object({
      kerberos_armoring_enabled       = optional(bool, false)
      kerberos_rc4_encryption_enabled = optional(bool, false)
      ntlm_v1_enabled                 = optional(bool, false)
      sync_kerberos_passwords         = optional(bool, false)
      sync_ntlm_passwords             = optional(bool, false)
      sync_on_prem_passwords          = optional(bool, false)
      tls_v1_enabled                  = optional(bool, false)
    }))
  }))
}

