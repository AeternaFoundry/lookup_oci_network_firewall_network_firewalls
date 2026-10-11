data "oci_network_firewall_network_firewalls" "network_firewall_network_firewalls_lookup" {
  for_each = var.network_firewall_network_firewalls_lookup

  compartment_id             = each.value.compartment_id
  availability_domain        = each.value.availability_domain
  display_name               = each.value.display_name
  network_firewall_policy_id = each.value.network_firewall_policy_id
  state                      = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

