provider "aws" {
  region = "us-east-1"
}

module "route53-domain-redirect" {
  source           = "https://github.com/natcapresearch/terraform-module-route53-domain-redirect"
  version          = "0.1.0"
  zone             = "example.com"
  target_host_name = "google.com"
}
