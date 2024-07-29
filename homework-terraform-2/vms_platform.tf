variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "instance family"
}

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "instance name"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2"
  description = "platform id"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "cores"
}

variable "vm_web_memory" {
  type        = number
  default     = 2
  description = "memory"
}

variable "vm_web_fraction" {
  type        = number
  default     = 5
  description = "core fraction"
}

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "instance name"
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

