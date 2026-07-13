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
  # --- Unconfirmed validation candidates, derived from azurerm_active_directory_domain_service's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: domain_name
  #   source:    [from validate.DomainServiceName] !ok
  # path: domain_name
  #   source:    [from validate.DomainServiceName] !p.MatchString(v)
  # path: initial_replica_set.subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: initial_replica_set.subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: sku
  #   condition: contains(["Standard", "Enterprise", "Premium"], value)
  #   message:   must be one of: Standard, Enterprise, Premium
  # path: notifications.additional_recipients[*]
  #   source:    validation.StringIsNotWhiteSpace(...) - no translation rule yet, add one
  # path: secure_ldap.pfx_certificate
  #   source:    azValidate.Base64EncodedString: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: domain_configuration_type
  #   condition: contains(["FullySynced", "ResourceTrusting"], value)
  #   message:   must be one of: FullySynced, ResourceTrusting
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

