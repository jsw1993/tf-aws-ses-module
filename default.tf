variable "domain_identity_ttl" {
  type        = number
  description = "TTL of domain_identity record"
  default     = 300
}

variable "dkim_ttl" {
  type        = number
  description = "TTL of DKIM records"
  default     = 300
}

variable "mail_from_mx_ttl" {
  type        = number
  description = "TTL of Mail from MX record"
  default     = 300
}

variable "mail_from_txt_ttl" {
  type        = number
  description = "TTL of Mail from TXT record"
  default     = 300
}