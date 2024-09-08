variable "ses_domain" {
  type        = string
  description = "Domain to configure for SES"
}

variable "route53_zone_id" {
  type        = string
  description = "Route 53 zone ID"

}

variable "mail_from_domain" {
  type        = string
  description = "Domain to use for mail from"

}