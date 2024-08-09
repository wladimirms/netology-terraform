terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
    template = {
      # Custom provider forks the original provider.
      # https://registry.terraform.io/providers/gxben/template/latest
      # Only difference is the darwin arm binary.
      source  = "gxben/template"
      # version has to be set explicitly instead of using a > sign
      version = "= 2.2.0-m1"
    }
  }
  required_version = "~>1.8.4"
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.default_zone
}
