variable "vpc_name" {
  type = string
  default     = ""
  description = "VPC network&subnet name"
}

variable "default_zone" {
  type        = string
  default     = ""
  description = "default zone"
}

variable "default_cidr" {
  type        = list(string)
  default     = [""]
  description = "default_cidr"
}
