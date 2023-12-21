variable "zone" {
  description = "Route53 zone name"
  type        = string
}

variable "target_host_name" {
  description = "Hostname of site to redirect to"
  type        = string
}
