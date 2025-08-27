variable "zone" {
  description = "Route53 zone name"
  type        = string
}

variable "target_host_name" {
  description = "Hostname of site to redirect to"
  type        = string
}

variable "enable_random_string_special" {
  description = "Enables 'special' for random_string resource, allowing for importing"
  type        = bool
  default     = false
}

