<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_routeros"></a> [routeros](#requirement\_routeros) | >= 1.0.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_routeros"></a> [routeros](#provider\_routeros) | >= 1.0.9 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [routeros_interface_wireguard.wg](https://registry.terraform.io/providers/GNewbury1/routeros/latest/docs/resources/interface_wireguard) | resource |
| [routeros_interface_wireguard_peer.peer](https://registry.terraform.io/providers/GNewbury1/routeros/latest/docs/resources/interface_wireguard_peer) | resource |
| [routeros_ip_address.ipv4](https://registry.terraform.io/providers/GNewbury1/routeros/latest/docs/resources/ip_address) | resource |
| [routeros_ipv6_address.ipv6](https://registry.terraform.io/providers/GNewbury1/routeros/latest/docs/resources/ipv6_address) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_interface_address_ipv4"></a> [interface\_address\_ipv4](#input\_interface\_address\_ipv4) | n/a | `string` | `null` | no |
| <a name="input_interface_address_ipv6"></a> [interface\_address\_ipv6](#input\_interface\_address\_ipv6) | n/a | `string` | `null` | no |
| <a name="input_interface_name"></a> [interface\_name](#input\_interface\_name) | n/a | `string` | `"wg0"` | no |
| <a name="input_interface_port"></a> [interface\_port](#input\_interface\_port) | n/a | `number` | `13231` | no |
| <a name="input_peers"></a> [peers](#input\_peers) | n/a | <pre>list(object({<br>    endpoint_host     = optional(string)<br>    endpoint_port     = optional(number)<br>    public_key        = string<br>    allowed_addresses = list(string)<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->