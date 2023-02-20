terraform {
  required_version = ">=1.3.0"

  required_providers {
    routeros = {
      source  = "GNewbury1/routeros"
      version = ">= 1.0.9"
    }
  }
}

locals {}
