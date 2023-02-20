variable "interface_name" {
  type    = string
  default = "wg0"
}

variable "interface_port" {
  type    = number
  default = 13231
}

variable "interface_address_ipv4" {
  type    = string
  default = null
}

variable "interface_address_ipv6" {
  type    = string
  default = null
}

variable "peers" {
  type = list(object({
    endpoint_host     = optional(string)
    endpoint_port     = optional(number)
    public_key        = string
    allowed_addresses = list(string)
  }))
}
