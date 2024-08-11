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

/* variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
} */

###common vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "your_ssh_ed25519_key"
  description = "ssh-keygen -t ed25519"
}

###example vm_web var
variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "example vm_web_ prefix"
}

###example vm_db var
variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "example vm_db_ prefix"
}

/* variable "ssh_pub_key" {
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOwI59x236ai6Rr2usk6dZHhX0QZu2E9tQHZ2oZY/UdF vladimirmuravev@MacBook-Air-Vladimir.local"
  description = "ssh public key ssh-keygen -t ed25519"
} */

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

variable "env_name" {
  type        = string
  default     = "develop"
  description = "environment name"
}

variable "core_fraction" {
  type        = number
  default     = 5
  description = "instance core fraction"
}