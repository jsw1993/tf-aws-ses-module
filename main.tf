resource "aws_ses_domain_identity" "domain_identity" {
  domain = var.ses_domain
}

resource "aws_ses_domain_identity_verification" "domain_verification" {
  domain = aws_ses_domain_identity.domain_identity.id

  depends_on = [aws_route53_record.ses_verification_record]
}

resource "aws_ses_domain_dkim" "dkim" {
  domain = aws_ses_domain_identity.domain_identity.domain
}

resource "aws_ses_domain_mail_from" "mail_from" {
  domain           = aws_ses_domain_identity.domain_identity.domain
  mail_from_domain = "${var.mail_from_domain}.${aws_ses_domain_identity.domain_identity.domain}"
}
