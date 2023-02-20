output "interface_public_key" {
  value = routeros_interface_wireguard.wg.public_key
}

output "interface_id" {
  value = routeros_interface_wireguard.wg.id
}
