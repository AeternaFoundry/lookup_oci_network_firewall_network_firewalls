variable "network_firewall_network_firewalls_lookup" {
  description = <<EOT
Map of network_firewall_network_firewalls_lookup, attributes below
Required:
    - compartment_id
Optional:
    - availability_domain
    - display_name
    - network_firewall_policy_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id             = string
    availability_domain        = optional(string)
    display_name               = optional(string)
    network_firewall_policy_id = optional(string)
    state                      = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

