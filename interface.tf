resource "routeros_interface_wireguard" "wg" {
  name        = var.interface_name
  listen_port = var.interface_port
}

resource "routeros_ip_address" "ipv4" {
  for_each  = var.interface_address_ipv4 != null ? toset([var.interface_address_ipv4]) : toset([])
  address   = each.value
  interface = routeros_interface_wireguard.wg.name
}

resource "routeros_ipv6_address" "ipv6" {
  for_each  = var.interface_address_ipv6 != null ? toset([var.interface_address_ipv6]) : toset([])
  address   = each.value
  interface = routeros_interface_wireguard.wg.name
}

resource "routeros_interface_wireguard_peer" "peer" {
  for_each = { for peer in var.peers : peer.public_key => peer }

  public_key       = each.key
  endpoint_address = each.value.endpoint_host
  endpoint_port    = each.value.endpoint_port
  allowed_address  = each.value.allowed_addresses
  interface        = routeros_interface_wireguard.wg.name

}
