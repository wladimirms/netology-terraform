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
  # token                    = "do not use!!!"
  cloud_id                 = "b1gn3ndpua1j6jaabf79"
  folder_id                = "b1gfu61oc15cb99nqmfe"
  service_account_key_file = file("~/.authorized_key.json")
  zone                     = "ru-central1-a" #(Optional) 
}
