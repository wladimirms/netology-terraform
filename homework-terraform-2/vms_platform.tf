variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "instance family"
}

#variable "vm_web_name" {
#  type        = string
#  default     = "netology-develop-platform-web"
#  description = "instance name"
#}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "platform id"
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
    },
    db = {
      cores=2
      memory=4
      core_fraction=20
      hdd_size=10
      hdd_type="network-ssd"
    }
  }
}

variable "metadata" {
  type=map(object({
    serial-port-enable = number
    ssh-keys = string
  }))
  default = {
    develop = {
      serial-port-enable = 1
      ssh-keys = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOwI59x236ai6Rr2usk6dZHhX0QZu2E9tQHZ2oZY/UdF vladimirmuravev@MacBook-Air-Vladimir.local"
    },
  }
}

variable "env" {
  type        = string
  default     = "develop"
  description = "environment"
}

variable "project_web" {
  type        = string
  default     = "ubuntu-a"
  description = "OS and zone"
}

variable "project_db" {
  type        = string
  default     = "ubuntu-b"
  description = "OS and zone"
}

variable "role_web" {
  type        = string
  default     = "web"
  description = "role"
}

variable "role_db" {
  type        = string
  default     = "db"
  description = "role"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "platform id"
}

variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "cores"
}

variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "memory"
}

variable "vm_db_fraction" {
  type        = number
  default     = 20
  description = "core fraction"
}

