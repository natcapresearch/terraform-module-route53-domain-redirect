resource "aws_acm_certificate" "cert" {
  domain_name               = var.zone
  validation_method         = "DNS"
  subject_alternative_names = ["www.${var.zone}"]

  lifecycle {
    # Recommended configuration for AWS-issued certificates managed by Terraform.
    # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate#amazon-issued-certificates
    create_before_destroy = true
  }

  # Providers must be in US East
  provider = aws.cert
}

resource "aws_acm_certificate_validation" "validation" {
  certificate_arn         = aws_acm_certificate.cert.arn
  validation_record_fqdns = [for record in aws_route53_record.cert_validation : record.fqdn]

  # Providers must be in US East
  provider = aws.cert
}
