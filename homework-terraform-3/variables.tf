###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "instances" {
  type        = list(string)
  default     = ["1", "2",]
}

variable "vm_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "instance family"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "platform id"
}

variable "security_group_id" {
  type        = string
  default     = "enpd46bh2cj5m39rt5pj"
  description = "Security group id"
}

variable "vms_resources" {
  type=map(object({
    cores = number
    memory = number
    core_fraction = number
    hdd_size = number
    hdd_type = string
  }))
  default = {
    web = {
      cores=2
      memory=2
      core_fraction=5
      hdd_size=10
      hdd_type="network-hdd"
    }
  }
}

variable "each_vm" {
  type = list(object({
      vm_name=string, 
      cpu=number,
      ram=number, 
      disk_volume=number 
      core_fraction=number
      }))
  default = [
    {
      vm_name = "main",
      cpu = 2,
      ram = 2,
      disk_volume = 1
      core_fraction = 5
    },
    {
      vm_name = "replica",
      cpu = 2,
      ram = 4,
      disk_volume = 2
      core_fraction = 5
    }
  ]   
}

locals {
  id_rsa_key = file("~/.ssh/id_rsa.pub")
}

variable "metadata" {
  type=map(object({
    serial-port-enable = number
    ssh-keys = string
  }))
  default = {
    develop = {
      serial-port-enable = 1
      ssh-keys = local.id_rsa_key
    }
  }
}